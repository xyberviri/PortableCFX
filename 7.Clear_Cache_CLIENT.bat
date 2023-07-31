@ECHO OFF
taskkill /IM FiveM.exe /F
pushd %userprofile%\AppData\Local\FiveM\FiveM.app
echo "Removing cache.xml"
del /Q /F caches.xml

echo "Clearing crashes"
del /Q /F /S crashes\*.dmp
echo "Clearing logs"
del /Q /F /S logs\*.log

echo "Clearing data cache"
rmdir /Q /S "data\cache"

echo "Clearing nui-storage"
rmdir /Q /S "data\nui-storage"

echo "Clearing server-cache"
rmdir /Q /S "data\server-cache"

echo "Clearing server-cache-priv"
rmdir /Q /S "data\server-cache-priv"
popd