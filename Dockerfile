FROM rhel7:latest
RUN yum install -y squid && yum clean all
RUN mkdir /var/cache/squid
ADD deploy_squid.py /tmp/deploy_squid.py
CMD /tmp/deploy_squid.py
