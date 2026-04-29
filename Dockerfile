FROM almalinux:10

RUN dnf install -y openssl

COPY ./files/ /files/

RUN chmod +x /files/CA_check.sh
RUN chmod +x /files/startup.sh

CMD ["/files/startup.sh"]
