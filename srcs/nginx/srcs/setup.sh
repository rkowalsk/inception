cp rkowalsk.42.fr /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/rkowalsk.42.fr /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default

cp server.crt /etc/ssl/certs/server.crt
cp server.key /etc/ssl/private/server.key

echo "daemon off;" >> /etc/nginx/nginx.conf
nginx -t
nginx
