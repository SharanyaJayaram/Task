# FROM ubuntu 
# RUN apt update 
# RUN apt install –y apache2 
# RUN apt install –y apache2-utils 
# EXPOSE 80
# CMD [“apache2ctl”, “-D”, “FOREGROUND”]

FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -y apache2
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
