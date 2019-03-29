FROM centos:7

RUN yum update -y

RUN yum install -y httpd httpd-tools

EXPOSE  80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
