FROM alpine:3.18.0
RUN apk update
RUN apk add openvpn iptables socat curl openssl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
