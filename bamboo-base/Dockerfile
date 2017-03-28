FROM centos:7
MAINTAINER h.boumedane

ENV MAVEN_VERSION 3.3.9

# Install jdk and utilities
RUN yum update -y && \
yum install -y wget && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel \
    git \
    bzip2 \
    unzip \
    wget  \
    which \
    fontconfig \
  && yum clean all

# Maven Download and config
RUN \
  mkdir /opt/maven-3.3 \
  && curl -kL http://ftp.unicamp.br/pub/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | \
    tar -xz --strip 1 -C /opt/maven-3.3 && ln -s /opt/maven-3.3/bin/mvn /usr/bin/mvn