if [ ! -d "/var/lib/mysql/wordpress" ]; then 

    mysql_install_db
    service mysql start
	echo "DROP DATABASE wordpress;" | mysql -u root --password=root;
	echo "CREATE USER 'root'@'%' IDENTIFIED BY 'root';" | mysql -u root --password=root;
	echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password;
	echo "ALTER DATABASE wordpress CHARACTER SET = 'utf8mb4' COLLATE = 'utf8mb4_general_ci';" | mysql -u root --password=root;
	echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;" |  mysql -u root --password=root;
	echo "FLUSH PRIVILEGES;" |  mysql -u root --password=root;
    service mysql stop 
fi
#sleep 5
echo "ALTER USER 'root'@'localhost'IDENTIFIED BY '$DB_PASSWORD';" > /var/lib/mysql/pass-reset
mysqld_safe --init-file=/var/lib/mysql/pass-reset
