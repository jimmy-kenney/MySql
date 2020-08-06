#!/bin/bash

while getopts "ir" OPTION
do
	case $OPTION in
		i)
			echo '---Creating Image'
            docker image build -t northwindmysql:dev .

            echo '---Building Contianer'
            docker run --name mysql -p 3306:3306 --restart always -d -e MYSQL_ROOT_PASSWORD=4sjUjMwidhV5QV53 northwindmysql:dev

            echo '---Pruning unused images'
            docker image prune -af

            echo '---MySql is ready connect locally with "Localhost" as the server, "northwind" is the database and the port is "3306"'

			exit
			;;
		r)
            echo "---Stopping Container"
			docker stop mysql
            
            echo "---Removing Container"
            docker rm mysql

            echo "---Removing images"
            docker image prune -af
			exit
			;;
	esac
done



