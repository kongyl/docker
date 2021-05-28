# mysql
docker run --name mysql -e MYSQL_ROOT_PASSWORD=login --network=mysql --ip=10.1.0.2 -d mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --default-authentication-plugin=mysql_native_password
docker run --name mysql -e MYSQL_ROOT_PASSWORD=login -p 3306:3306 -d mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --default-authentication-plugin=mysql_native_password
# mysql 5.6
docker run --name mysql56 -e MYSQL_ROOT_PASSWORD=login --network=mysql --ip=10.1.0.3 -d mysql:5.6 --character-set-server=utf8 --collation-server=utf8_unicode_ci
# phpmyadmin
docker run --name myadmin --network=mysql --ip=10.1.0.4 -d -e PMA_ARBITRARY=1 phpmyadmin/phpmyadmin

