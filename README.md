##CI Tools based on Bamboo**

Set of docker images to install Atlassian Bamboo server and agent based on CentOS.

## What's in stack?
`bamboo-server` - Bamboo Server  
`bamboo-agent` - Bamboo Agent  
`msysql-db` - Mysql Database Server  
`nexus` - Nexus as a Repository manager


## Usage
```bash
$ git clone https://github.com/hboumedane/docker-ci-tools.git bamboo-stack
$ cd bamboo-stack
$ docker-compose up -d .
```