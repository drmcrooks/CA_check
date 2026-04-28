FROM almalinux:10

RUN dnf install -y openssl

ADD ./files /files

RUN chmod +x /files/startup.sh

CMD ["/files/startup.sh"]
