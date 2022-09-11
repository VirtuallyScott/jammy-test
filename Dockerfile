FROM ubuntu:jammy
 
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update && \
    apt-get upgrade -y
 
RUN apt-get install -y -q \
    apt-utils \
    awscli \
    ca-certificates \
    ca-certificates-java \
    nginx \
    openjdk-11-jdk-headless \
    tomcat9 \
    tzdata \
    unzip \
    zip

CMD dpkg --purge \
    gcc \
    netcat \
    ssh \
    ufw

#RUN apt clean autoclean && \
#    apt autoremove --yes && \
#    rm -rf /var/lib/{apt,dpkg,cache,log}/
