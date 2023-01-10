# OpenVPN Server Setup Script
Podman image that creates an openvpn server for LAN games  
Podman rootless is used because docker-deamon running as root can be a potential security risk

## RUN
Use `sudo ./start` to create low privilege user and run the image

## Client Certificates
Use `sudo ls /home/vpnuser/out` to see client certificates

## Logs
Use `sudo -u vpnuser podman logs vpnserver` to see server logs

## STOP
Use `sudo ./stop` to destroy the container/server and delete created user
