yum install nginx
cp nginx.conf /etc/nginx/nginx.conf
semodule -i nginx.pp
rm -rf /usr/share/nginx/html/rails
cp -R $1 /usr/share/nginx/html/rails
chown -R $2 /usr/share/nginx/html/rails
mkdir -p /run
mkdir -p /var/sockets
chmod 0777 /var/sockets
service nginx restart
