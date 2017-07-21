FROM centos:centos7
MAINTAINER lothar.handl@3beg.at
RUN yum install -y squid nc
ENV TZ Europe/Vienna
ADD squid.conf /etc/squid/squid.conf
ADD run.sh /run.sh
RUN ln -sf /dev/stdout /var/log/squid/access.log
RUN ln -sf /dev/stdout /var/log/squid/cache.log
RUN squid -F
EXPOSE 3128
CMD /run.sh
