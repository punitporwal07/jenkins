# Dockerfile for building Jenkins image on centos, with necessary plugins as possible.
#
# Version  1.0
#
#
# pull base image of centos
FROM centos6:7

Maintainer Punit <punitporwal07@gmail.com>

WORKDIR /software/jenkins/

COPY jenkins.war jdk1.8.0_91.tar plugins.tar users.tar /software/jenkins/

RUN tar -xpf jdk1.8.0_91.tar

RUN mkdir /root/.jenkins/

WORKDIR /root/.jenkins/

RUN tar -xpf /software/jenkins/plugins.tar && \
    tar -xpf /software/jenkins/users.tar

EXPOSE 8080

WORKDIR /software/jenkins/

ENTRYPOINT /software/jenkins/jdk1.8.0_91/bin/java -jar jenkins.war
