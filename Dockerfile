FROM centos:centos7
MAINTAINER akram.benaissi@gmail.com
#RUN yum update -y
RUN yum install -y squid
ADD squid.conf /etc/squid/squid.conf
ADD run.sh /run.sh

# Make cache dirs 
RUN squid -z -F
RUN yum install -y nc
EXPOSE 3128
EXPOSE 80
CMD /run.sh
