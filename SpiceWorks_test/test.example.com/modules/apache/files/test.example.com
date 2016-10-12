Listen 80
<VirtualHost *:80>
  # General Host Information for test.example.com
  ServerAdmin admin@test.example.com
  DocumentRoot /var/www/test.example.com
  ServerName test.example.com
  CustomLog /var/log/apache2/access.log combined
  RewriteEngine On
  RewriteRule "^/test$" "/index.html" [L]
</VirtualHost>
