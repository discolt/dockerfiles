################################################################################
# This Dockerfile was generated from the template at distribution/src/docker/Dockerfile
#
# Beginning of multi stage Dockerfile
################################################################################
FROM centos:7 AS builder

ENV PATH $PATH:/opt/jdk-15.0.1+9/bin
ENV JAVA_HOME /opt/jdk-15.0.1+9

RUN for iter in {1..10}; do curl -L -s -S https://ebase.oss-cn-shanghai.aliyuncs.com/release/jdk/OpenJDK15U-jdk_x64_linux_hotspot_15.0.1_9.tar.gz | tar -C /opt -zx && \
    exit_code=0 && break || exit_code=\$? && echo "download error: retry $iter in 10s" && sleep 10; done; \
    (exit $exit_code)


RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-15.0.1+9/lib/security/cacerts

FROM centos:7

ENV ELASTIC_CONTAINER true
ENV JAVA_HOME /opt/jdk-15.0.1+9

COPY --from=builder /opt/jdk-15.0.1+9 /opt/jdk-15.0.1+9

RUN for iter in {1..10}; do yum update  --setopt=tsflags=nodocs -y && \
    yum install -y  --setopt=tsflags=nodocs nc unzip wget which sysstat libcgroup libcgroup-tools sudo unzip which net-tools lsof&& \
    yum clean all && exit_code=0 && break || exit_code=\$? && echo "yum error: retry $iter in 10s" && sleep 10; done; \
    (exit $exit_code)


##########################
# --------- TSAR ---------
##########################

RUN yum install -y cpp binutils glibc glibc-kernheaders glibc-common glibc-devel gcc gcc-c++ make
RUN wget -O tsar.zip https://github.com/alibaba/tsar/archive/master.zip --no-check-certificate
RUN unzip tsar.zip 
WORKDIR tsar-master
RUN make && make install