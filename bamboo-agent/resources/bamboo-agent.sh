#!/bin/bash

## Installing requested packages
if [ "${PACKAGES}" != "" ]
then
  echo "Packages to install: "${PACKAGES}
  yum -y update && yum -q -y ${PACKAGES} && yum -q -y clean all

else
  echo "Nothing to install."
fi

cd /root

echo "Setting up the environment..."
export LANG=en_US.UTF-8
export JAVA_TOOL_OPTIONS="-Dfile.encoding=utf-8 -Dsun.jnu.encoding=utf-8"
export DISPLAY=:1
export M2_HOME=/opt/maven-3.3

# Run Bamboo Agent
if [ -n ${AGENT_VERSION} ] && [ -n ${BAMBOO_SERVER} ] && [ -n ${BAMBOO_SERVER_PORT} ]
then
  SLEEP="120"
  echo "Provided Data:"
  echo "AGENT_VERSION: "${AGENT_VERSION}
  echo "BAMBOO_SERVER: "${BAMBOO_SERVER}
  echo "BAMBOO_SERVER_PORT: "${BAMBOO_SERVER_PORT}
  echo "AGENT_JAR: "${AGENT_JAR}
  echo "Starting Bamboo Agent..."
  java -jar atlassian-bamboo-agent-installer-${AGENT_VERSION}.jar http://${BAMBOO_SERVER}:${BAMBOO_SERVER_PORT}/agentServer/
else
  echo "Not all needed data was provided."
  echo "AGENT_VERSION: "${AGENT_VERSION}
  echo "BAMBOO_SERVER: "${BAMBOO_SERVER}
  echo "BAMBOO_SERVER_PORT: "${BAMBOO_SERVER_PORT}
  echo "Exiting."
fi