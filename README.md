# インストール
```
bundle install
```

# 本番デプロイ
```
bundle exec cap deploy
```

# SSL証明書
## 最初にやること
```
$ sudo apt-get install certbot
$ sudo certbot certonly --webroot --webroot-path /var/www/jiikko.com/current/public/ -d jiikko.com --email n905i.1214@gmail.com
```

## 更新
```
$ sudo certbot renew
```
