FROM httpd:2.4
RUN apt update 
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

# FROM ubuntu:20.04
# RUN apt-get update -y
# RUN apt-get install -y apache2
# EXPOSE 80
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# FROM httpd:2.4
# WORKDIR /usr/local/apache2/htdocs/
# COPY ./public-html/ ./
# EXPOSE 80
# RUN echo "ServerName 52.90.15.142" >> /etc/apache2/apache2.conf
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
