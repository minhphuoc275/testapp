############################################################
# Set the base image to AmazonLinux
FROM ubuntu
MAINTAINER PhuocTran

################## BEGIN INSTALLATION ######################
RUN sudo echo "127.0.0.1 redis.local" >> /etc/hosts
RUN cat /etc/hosts
curl -L -o /testapp/tmp/testapp.zip https://github.com/Kixeye/testapp.git
wget -P ~/ https://github.com/Kixeye/testapp.zip
