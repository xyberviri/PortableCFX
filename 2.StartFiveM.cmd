@echo off
cls
pushd server_files
"server/FXServer.exe" +set serverProfile "default" +set moo 31337
pause