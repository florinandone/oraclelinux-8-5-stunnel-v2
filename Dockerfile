FROM oraclelinux:8.5

#RUN yum -y update
RUN yum -y install stunnel 
RUN yum -y install openldap-clients
EXPOSE 1636

VOLUME /etc/stunnel
WORKDIR /etc/stunnel
CMD [ "/bin/bash", "-c","chmod 600 /etc/stunnel/stunnel.key;/usr/bin/stunnel;tail -f dev/null"]
