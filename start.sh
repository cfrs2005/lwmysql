#!/bin/bash

if [ ! -f /root/a.log ]; then
  /usr/bin/mysqld_safe &
  sleep 10s
  MYSQL_PASSWORD=`lewa`

  mysqladmin -u root password $MYSQL_PASSWORD
  mysql -uroot -p$MYSQL_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION; FLUSH PRIVILEGES;"
  mysql -uroot -p$MYSQL_PASSWORD < /root/mysql.sql
  killall mysqld
  echo "done" > /root/a.log  
fi


/usr/local/bin/supervisord -n