FROM alpine

RUN apk add nginx fcgiwrap spawn-fcgi git-daemon

RUN mkdir -p /git

COPY nginx-git.conf /etc/nginx/http.d/git.conf
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN rm /etc/nginx/http.d/default.conf

WORKDIR /git

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]

