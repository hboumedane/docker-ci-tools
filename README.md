##CI Tools based on Bamboo

Set of docker images to install Atlassian Bamboo server and agent based on CentOS.

## What's in stack?
`bamboo-server` - Bamboo Server  
`bamboo-agent` - Bamboo Agent  
`msysql-db` - Mysql Database Server  
`nexus` - Nexus as a Repository manager


## Usage
First think to do is to run the bamboo-server container alone. When the container start go to the admin
console and disable authentication for remote agent and download the agent jar file.
copy the downloaded jar file and put it inside the bamboo-agent folder(You can put it in a git repository).
```bash
$ git clone https://github.com/hboumedane/docker-ci-tools.git bamboo-stack
$ cd bamboo-stack
$ docker-compose up -d
```

once you finish the first step you can run the following command
```bash
$ cd bamboo-stack
$ docker-compose stop
$ docker-compose build
$ docker-copose up -d
```
