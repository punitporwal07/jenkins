# Dockerfile for building Jenkins image on centos, with necessary plugins as possible.
#
# Version  1.0
#
#
# pull base image of centos
FROM centos6:7

Maintainer Punit <punitporwal07@gmail.com>

WORKDIR /software/jenkins/

ADD ["jdk1.8.0_91.tar", "jenkins.war", "/software/jenkins/"]

RUN tar -xpf jdk1.8.0_91.tar

EXPOSE 8080

ENTRYPOINT /software/jenkins/jdk1.8.0_91/bin/java -jar jenkins.war
