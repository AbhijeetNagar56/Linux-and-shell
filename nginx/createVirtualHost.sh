sudo mkdir -p /etc/nginx/sites-available
sudo mkdir -p /etc/nginx/sites-enabled


sudo nano /etc/nginx/nginx.conf

# add inside last http {..}
include sites-enabled/*
# save

sudo mkdir -p /var/www/example.com/html
sudo chown -R $USER:$USER /var/www/example.com/html
sudo chmod -R 755 /var/www


echo "<h1>Success! The virtual host is working.</h1>" > /var/www/example.com/html/index.html

sudo nano /etc/nginx/sites-available/example.com

# paste
server {
    listen 80;
    listen [::]:80;

    server_name example.com www.example.com;

    root /var/www/example.com/html;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }
}
# save

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
sudo nginx -t

sudo systemctl restart nginx

sudo nano /etc/hosts

# add
127.0.0.1   example.com
# save
