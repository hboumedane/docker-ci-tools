FROM centos:latest
MAINTAINER h.Boumedane

# Update system & install dependencies
RUN yum -y update \
	&& yum -q -y install git java-1.8.0-openjdk-devel unzip wget which \
	&& yum -q -y clean all

# Preparing agent environment
WORKDIR /root

COPY bamboo-agent.sh /root/bamboo-agent.sh

#USER bamboo-agent
ENTRYPOINT ["/bin/bash", "-c", "/root/bamboo-agent.sh"]