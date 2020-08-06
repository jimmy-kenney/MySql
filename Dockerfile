FROM mysql:5

ENV MYSQL_DATABASE northwind
# root password: 4sjUjMwidhV5QV53
# docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=4sjUjMwidhV5QV53 --name northwindmysql northwind:mysql

COPY ./sql-scripts/ /docker-entrypoint-initdb.d/