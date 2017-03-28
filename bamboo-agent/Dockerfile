FROM bamboo-base
MAINTAINER h.Boumedane

# Preparing agent environment
WORKDIR /root

COPY ./resources/ /root/
RUN chmod +x /root/bamboo-agent.sh && chmod 777 /root/atlassian*.jar
#USER bamboo-agent
ENTRYPOINT ["/bin/bash", "-c", "/root/bamboo-agent.sh"]