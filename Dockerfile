FROM ubuntu:jammy
 
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
 
RUN apt-get update && \
    apt-get upgrade -y
 
RUN apt-get install -y -q \
    apt-utils \
    tzdata \
    openjdk-11-jdk-headless \
    tomcat9

RUN apt-get remove -y -q \
    gcc \
    netcat

RUN apt clean autoclean && \
    apt autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/
