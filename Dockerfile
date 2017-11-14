FROM amazonlinux

RUN yum update -y \
    && yum install -y httpd \
    && chkconfig httpd on

COPY index.html /var/www/html/index.html

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

EXPOSE 80
