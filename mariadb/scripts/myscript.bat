@echo off
"C:\Bitnami\wordpress-6.0.2-0/mariadb\bin\mysql.exe" --defaults-file="C:\Bitnami\wordpress-6.0.2-0/mariadb\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Bitnami\wordpress-6.0.2-0/mariadb\bin\mysql.exe" --defaults-file="C:\Bitnami\wordpress-6.0.2-0/mariadb\my.ini" -u root -e "SET Password=password('%1');"

