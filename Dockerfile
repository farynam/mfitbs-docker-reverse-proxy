FROM httpd:2.4

#RUN mkdir -p /myapp/conf
#COPY /conf/myapp /myapp

#RUN chmod u+x /myapp/run.sh

RUN mkdir -p /myapp/pki

COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/usr /usr/


#ENTRYPOINT ["/myapp/run.sh", "httpd-foreground"]