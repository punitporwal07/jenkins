#### Jenkins file you can use to setup a pipeline job

# jenkins in Docker

configuration.xml ::        file here is used for weblogic deployer plugin provided in Jenkins.

Dockerfile ::               is used to create image of jenkins:2.176 of size  1.48GB which includes all possible plugins along with                                   jenkins as an additonal user.

build docker image using :: docker build -t jenkins:2.176 .

hold Jenkins data via ::    docker volume create jenkins_data ( which will hold your jenkins data under /var/lib/docker/volume/ )

run docker image using ::   docker run -it -p 9090:8080 -v jenkins_data:/root/.jenkins/ punitporwal07/jenkins:2.176

##
To use this Dockerfile you need to add following with it:
jdk1.8.0_211.tar
jenkins.war
plugins.tar
users.tar
