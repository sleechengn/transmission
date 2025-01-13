FROM linuxserver/transmission:latest
WORKDIR /opt
RUN wget https://github.com/ronggang/transmission-web-control/raw/master/release/install-tr-control.sh
RUN sh install-tr-control.sh auto
EXPOSE 9091
