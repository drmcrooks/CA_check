FROM almalinux:10

RUN dnf install -y openssl

ADD ./files /files

CMD ["/files/startup"]
