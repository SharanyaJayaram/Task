FROM ubuntu:20.04
ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y apache2
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
