set curdir = %~dp0
cd %curdir%
mysql --user=root --host=localhost --password=root --database=parcinfo
pause