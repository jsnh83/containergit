FROM registry.access.redhat.com/ubi8/ubi:8.0

MAINTAINER Red Hat Training <training@redhat.com>


RUN yum install -y --disableplugin=subscription-manager httpd

RUN yum clean all --disableplugin=subscription-manager -y

RUN echo "Hello from the httpd-parent container!" > ${DOCROOT}/index.html

EXPOSE 80

USER root

CMD /usr/sbin/httpd -DFOREGROUND
