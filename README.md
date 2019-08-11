# jenkins in Docker

configuration.xml ::        file here is used for weblogic deployer plugin provided in Jenkins.

Dockerfile ::               is used to create image of jenkins:2.176 of size  1.53GB

build docker image using :: docker build -t jenkins:2.176 .

hold Jenkins data via ::    docker volume create jenkins_data ( which will hold your jenkins data under /var/lib/docker/volume/ )

run docker image using ::   docker run -it -p 9090:8080 -v jenkins_data:/root/.jenkins/ jenkins:2.176
