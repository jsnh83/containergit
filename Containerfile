FROM registry.access.redhat.com/ubi8/ubi:8.0
MAINTAINER Red Hat Training <training@redhat.com>
RUN yum install -y httpd
RUN yum clean all 
RUN echo "Hello from the httpd-parent container!" > /var/www/html/index.html
USER root
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
