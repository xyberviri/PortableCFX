@echo off
cls
pushd mariadb-10.4.30-winx64
start "DO NOT CLOSE WHILE SERVER IS RUNNING, USE 5.Shutdown_Database to close" /MIN bin\mysqld.exe --console
popd
