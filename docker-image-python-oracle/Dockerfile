FROM python:3.7

RUN apt update
RUN apt install -y libaio1

ENV INSTANT_CLIENT /opt/oracle/instantclient_12_2

ADD instantclient_12_2 /opt/oracle/instantclient_12_2

RUN echo $INSTANT_CLIENT > /etc/ld.so.conf.d/oracle-instantclient.conf

ENV LD_LIBRARY_PATH $INSTANT_CLIENT/$LD_LIBRARY_PATH
