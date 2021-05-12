FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y bind9 bind9utils bind9-doc dnsutils
COPY ./bind-config/* /etc/bind/
# RUN systemctl restart bind9
EXPOSE 53/tcp
EXPOSE 53/udp
CMD ["named"]