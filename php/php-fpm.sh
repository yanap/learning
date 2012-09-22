#!/bin/sh
#memo

/usr/sbin/php-fpm start

php-fpm stop; # PHP-FPMを停止する
php-fpm quit; # PHP-FPMを穏便にシャットダウンする
php-fpm restart; # PHP-FPMを停止して再起動する
php-fpm reload; # 設定をリロードする
php-fpm logrotate; # ログファイルのローテーションを行う
