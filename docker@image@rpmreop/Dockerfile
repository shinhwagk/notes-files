FROM nginx:1.13.9

RUN apt update && \
    apt install -y createrepo

WORKDIR /usr/share/nginx/html

RUN createrepo .