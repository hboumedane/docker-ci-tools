FROM bamboo-base
MAINTAINER homada

ENV BAMBOO_VERSION 5.15.4
ENV BAMBOO_HOME /home/bamboo
ENV BAMBOO_INST /opt/bamboo

ENV MAVEN_VERSION 3.3.9

# http(s), remote agent
EXPOSE 8085 54663

# create bamboo user
RUN groupadd -r bamboo && useradd -r -g bamboo bamboo

# Bamboo Download
RUN \
  mkdir -p $BAMBOO_HOME $BAMBOO_INST \
  && chown -R bamboo:bamboo $BAMBOO_HOME && chmod -R 755 $BAMBOO_HOME \
  && chown -R bamboo:bamboo $BAMBOO_INST && chmod -R 755 $BAMBOO_INST \
  && curl -kL https://www.atlassian.com/software/bamboo/downloads/binary/atlassian-bamboo-${BAMBOO_VERSION}.tar.gz | \
    tar -xz --strip 1 -C $BAMBOO_INST

RUN echo "bamboo.home=$BAMBOO_HOME" > $BAMBOO_INST/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties

COPY ./drivers/mysql-connector-java-5.1.41-bin.jar $BAMBOO_INST/lib/

# Launching Bamboo
WORKDIR $BAMBOO_INST
VOLUME ["$BAMBOO_HOME"]

CMD ["bin/start-bamboo.sh", "-fg"]