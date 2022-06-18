FROM python:3.8.12-slim-bullseye
ARG RALLY_VERSION
ARG RALLY_LICENSE

ENV RALLY_RUNNING_IN_DOCKER True

RUN apt-get -y update && \
    apt-get install -y curl git gcc pbzip2 pigz && \
    apt-get -y upgrade && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install esrally==$RALLY_VERSION

WORKDIR /rally
COPY docker/bin/entrypoint.sh /entrypoint.sh

# Openshift overrides USER and uses random ones with uid>1024 and gid=0
# Allow ENTRYPOINT (and Rally) to run even with a different user
RUN chgrp 0 /entrypoint.sh && \
    chmod g=u /etc/passwd && \
    chmod 0775 /entrypoint.sh

RUN mkdir -p /rally/.rally && 


ENV PATH=/rally/venv/bin:$PATH

LABEL org.label-schema.schema-version="1.0" \
  org.label-schema.vendor="Elastic" \
  org.label-schema.name="rally" \
  org.label-schema.version="${RALLY_VERSION}" \
  org.label-schema.url="https://esrally.readthedocs.io/en/stable/" \
  org.label-schema.vcs-url="https://github.com/elastic/rally" \
  license="${RALLY_LICENSE}"

VOLUME ["/rally/.rally"]

ENTRYPOINT ["/entrypoint.sh"]
