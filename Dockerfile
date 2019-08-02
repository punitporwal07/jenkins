# Dockerfile for building Jenkins image on OEL 7, with necessary plugins as possible.
#
# Version  1.0
#
#
# pull base image of OEL:7
FROM registry.docker.nat.bt.com/infra-linux/bt-oraclelinux:7

Maintainer Punit <punit.porwal@bt.com>

WORKDIR /software/jenkins/

ADD ["jdk1.8.0_91.tar", "jenkins.war", "/software/jenkins/"]
RUN tar -xpf jdk1.8.0_91.tar

EXPOSE 8080

ENTRYPOINT /software/jenkins/jdk1.8.0_91/bin/java -jar jenkins.war
