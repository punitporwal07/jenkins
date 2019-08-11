# Dockerfile for building Jenkins image on centos, with necessary plugins as possible.
#
# Version  1.0
#
# pull base image of centos
FROM centos:6.7

Maintainer Punit <punitporwal07@gmail.com>

WORKDIR /software/jenkins/

# the tar/war files should be available at your local directory
#
COPY jenkins.war jdk1.8.0_211.tar plugins.tar users.tar /software/jenkins/
#
# this will install JDK which will be used to run jenkins.war file
RUN yum install tar -y && \
    \
    tar -xpf jdk1.8.0_211.tar && \
    \
    mkdir /root/.jenkins/

WORKDIR /root/.jenkins/

RUN tar -xpf /software/jenkins/plugins.tar && \
    tar -xpf /software/jenkins/users.tar

EXPOSE 8080

WORKDIR /software/jenkins/

ENTRYPOINT /software/jenkins/jdk1.8.0_211/bin/java -jar jenkins.war
