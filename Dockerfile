############################################################
# Set the base image to AmazonLinux
FROM ubuntu
MAINTAINER PhuocTran

################## BEGIN INSTALLATION ######################
RUN sudo echo "127.0.0.1 redis.local" >> /etc/hosts
