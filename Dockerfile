FROM httpd:2.4
LABEL maintainer="Emertyl <lremy@is4ri.com>"

WORKDIR /usr/local/apache2

ENV APACHE_HOME=/usr/local/apache2

RUN apt-get -qq update && \
	apt-get -qq clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	mkdir -p $APACHE_HOME/cert $APACHE_HOME/logs $APACHE_HOME/conf-add
	
COPY ./conf/httpd.conf $APACHE_HOME/conf/httpd.conf
