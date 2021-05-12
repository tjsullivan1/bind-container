FROM ubuntu:18.04
# RUN mkdir -p /usr/src/app
# COPY ./sample_app/ /usr/src/app/
# WORKDIR /usr/src/app
# RUN npm install
# CMD node /usr/src/app/index.js
RUN apt-get update -y
RUN apt-get install -y bind9 bind9utils bind9-doc dnsutils
COPY ./bind-config/* /etc/bind/
RUN systemctl restart bind9
EXPOSE 53/tcp
EXPOSE 53/udp
CMD ["named"]