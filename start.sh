#!/bin/bash

if [ ! -f /root/a.log ]; then
  /usr/bin/mysqld_safe &
  sleep 10s
  MYSQL_PASSWORD = `lewa`
  mysqladmin -u root password lewa
  mysql -uroot -plewa -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'lewa' WITH GRANT OPTION; FLUSH PRIVILEGES;"
  mysql -uroot -plewa < /root/mysql.sql
  killall mysqld
  echo "done" > /root/a.log
fi


/usr/local/bin/supervisord -n