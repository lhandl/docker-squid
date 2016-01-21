FROM tianon/centos:6.5
MAINTAINER akram.benaissi@gmail.com

RUN yum install -y squid
ADD squid.conf /etc/squid/squid.conf
ADD run.sh /run.sh

# Make cache dirs 
RUN squid -z -F

EXPOSE 3128
CMD /run.sh
