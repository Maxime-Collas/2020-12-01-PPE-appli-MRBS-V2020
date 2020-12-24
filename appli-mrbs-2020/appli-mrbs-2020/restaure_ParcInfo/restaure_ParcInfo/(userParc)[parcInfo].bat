set curdir = %~dp0
cd %curdir%
mysql --user=user_parc --host=172.17.5.101 --password=user_parc --database=parcInfo
pause