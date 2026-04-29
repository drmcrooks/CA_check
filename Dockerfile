FROM almalinux:10

RUN dnf install -y openssl

COPY ./files/CA_check.sh /bin/
COPY ./files/startup.sh /bin/

RUN chmod +x /bin/CA_check.sh
RUN chmod +x /bin/startup.sh

CMD ["/bin/startup.sh"]
