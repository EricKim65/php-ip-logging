docker run -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=erics --name mysql-c -v "$PWD/../mysql/databases":/var/lib/mysql -d mysql:5.7
docker run --name myadmin-c -d --link mysql-c:db -p 8080:80 phpmyadmin/phpmyadmin:latest
docker run --name gogs --link mysql-c:mysql -p 22:22 -p 3000:3000 -v "$PWD/data":/data gogs/gogs
