bash <<EOF
apt update && apt upgrade -y

apt install -y nginx

systemctl start nginx

systemctl enable nginx

echo "<h2>Welcome to $(hostname) : $(hostname -I | awk '{print $1}')</h2><p> I am a basic web server created by Sysadmintutorials, enjoy." | tee /var/www/html/index.html
EOF
