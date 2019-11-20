FROM httpd:2.4

COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/rewrite.conf /usr/local/apache2/conf/extra/rewrite.conf