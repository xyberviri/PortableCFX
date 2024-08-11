@ECHO OFF
set MARIADB_URL=https://archive.mariadb.org/mariadb-11.4.2/winx64-packages/mariadb-11.4.2-winx64.zip
set MARIADB_FILENAME=mariadb-11.4.2-winx64
set MARIADB_FOLDERNAME=mariadb

if not exist %MARIADB_FOLDERNAME% (
    echo Downloading %MARIADB_URL%
    rem Powershell -command "$wc = New-Object net.webclient;$wc.Downloadfile('%MARIADB_URL%', '%MARIADB_FOLDERNAME%.zip')"
    curl %MARIADB_URL% --output %MARIADB_FOLDERNAME%.zip
    tar -xf %MARIADB_FOLDERNAME%.zip
    ren %MARIADB_FILENAME% %MARIADB_FOLDERNAME%
    pushd %MARIADB_FOLDERNAME%
    @call bin\mysql_install_db.exe
    popd
    del /s /q %MARIADB_FOLDERNAME%.zip
)