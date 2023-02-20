################################################################################
# This Dockerfile was generated from the template at distribution/src/docker/Dockerfile
#
# Beginning of multi stage Dockerfile
################################################################################
FROM centos:7 AS builder

ENV PATH $PATH:/opt/jdk-17.0.2/bin
ENV JAVA_HOME /opt/jdk-17.0.2

RUN for iter in {1..10}; do curl -L -s -S https://ebase.oss-cn-shanghai.aliyuncs.com/release/jdk/openjdk-17.0.2_linux-x64_bin.tar.gz | tar -C /opt -zx && \
    exit_code=0 && break || exit_code=\$? && echo "download error: retry $iter in 10s" && sleep 10; done; \
    (exit $exit_code)


RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-17.0.2/lib/security/cacerts

FROM centos:7

ENV ELASTIC_CONTAINER true
ENV PATH $PATH:/opt/jdk-17.0.2/bin
ENV JAVA_HOME /opt/jdk-17.0.2

COPY --from=builder /opt/jdk-17.0.2 /opt/jdk-17.0.2

RUN for iter in {1..10}; do yum update  --setopt=tsflags=nodocs -y && \
    yum install -y  --setopt=tsflags=nodocs nc unzip wget which sysstat libcgroup libcgroup-tools sudo unzip which net-tools lsof&& \
    yum clean all && exit_code=0 && break || exit_code=\$? && echo "yum error: retry $iter in 10s" && sleep 10; done; \
    (exit $exit_code)


##########################
# --------- TSAR ---------
##########################

RUN yum install -y cpp binutils glibc glibc-kernheaders glibc-common glibc-devel gcc gcc-c++ make
COPY tsar.zip tsar.zip
RUN unzip tsar.zip 
WORKDIR tsar-master
RUN make && make install
RUN touch /var/log/tsar.data