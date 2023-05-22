FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install --yes git python2 python-yaml default-jre
#RUN git clone https://github.com/CDCgov/NCHHSTP-DTBE-Varpipe-WGS.git
COPY . /NCHHSTP-DTBE-Varpipe-WGS/tools
ENV PATH $PATH:/NCHHSTP-DTBE-Varpipe-WGS/tools


