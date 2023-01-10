FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install openvpn easy-rsa -y
COPY setup .
RUN chmod +x /setup
EXPOSE 1194
CMD ["/bin/bash","-c","./setup; /usr/sbin/openvpn --cd /etc/openvpn --config /etc/openvpn/server.conf"]
