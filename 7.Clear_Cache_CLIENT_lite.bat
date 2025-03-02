@ECHO OFF
taskkill /IM FiveM.exe /F
pushd %userprofile%\AppData\Local\FiveM\FiveM.app

echo "Clearing server-cache-priv"
rmdir /Q /S "data\server-cache-priv"
popd