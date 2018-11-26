FROM ubuntu:latest
LABEL maintainer="Antony King"

RUN apt-get update
#RUN apt-get install -y
RUN adduser --quiet --disabled-password --shell /bin/bash --home /home/antony --gecos "Antony King" antony 
RUN usermod -aG sudo antony

USER antony
ENV TERM xterm
CMD ["bash"]
