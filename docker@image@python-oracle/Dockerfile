FROM python:3

RUN apt update
RUN apt install -y libaio1

ADD instantclient /opt/instantclient

RUN cd /opt/instantclient && ln -s libclntsh.so.12.1 libclntsh.so

ENV ORACLE_HOME /opt/instantclient
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:$ORACLE_HOME

RUN python -m pip install cx_Oracle
