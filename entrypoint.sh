#!/usr/bin/env sh

git init --bare
git config http.receivepack true
git config http.uploadpack true

chown -R nginx /git
chmod -R 775 /git

spawn-fcgi -s /var/run/fcgiwrap.sock -u nginx -g nginx -U nginx -G nginx /usr/bin/fcgiwrap
nginx -g "daemon off;"
