### Setup

1. `chmod +x installdocker.sh`
2. `./installdocker.sh`
3. Log out and then log back in, this is to add the `docker` command to the sudo list so you do not have to type `sudo docker [command]` every time just `docker [command]`
4. `chmod +x mysql.sh`
5. `./mysql.sh -i` to create a MySql container
6. `./mysql.sh -r` to remove the MySql container.

### Install MySql Workbench

1. `chmod +x workbenchInstall1804.sh`
2. `./workbenchinstall1804.sh`