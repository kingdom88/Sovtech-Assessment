@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\wordpress-6.0.2-0/mariadb\bin\mysqld.exe" --install "wordpressMariaDB-2" --defaults-file="C:\Bitnami\wordpress-6.0.2-0/mariadb\my.ini"

net start "wordpressMariaDB-2" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMariaDB-2" >NUL
"C:\Bitnami\wordpress-6.0.2-0/mariadb\bin\mysqld.exe" --remove "wordpressMariaDB-2"

:end
exit
