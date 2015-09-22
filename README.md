# Sonar Qube Docker Image

## Environment

* CentOS 7
* Sonar Qube 5.1.2

## Requirements

* MySQL Server 5.6 Docker container
* Minimal [SQL setup](mysql.sql)

## User Guide

### Manual setup

* Create and start the DB container
* Cd into this project and build the image:
```
docker build --rm --tag <user>/<sonar image name> .
```

* Create and start a new Sonar container, assuming the DB container is already up and running:
```
docker run -d --name <sonar container name> \
--link <db container name> \
-p 9000:9000 \
-e SONARQUBE_JDBC_USERNAME=<db user> \
-e SONARQUBE_JDBC_PASSWORD=<db user password> \
-e SONARQUBE_JDBC_URL=jdbc:mysql://<db container name>:3306/<db name>?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true \
<user>/<sonar image name>
```
