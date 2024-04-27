@ECHO OFF
set MARIADB_URL=https://archive.mariadb.org/mariadb-10.4.30/winx64-packages/mariadb-10.4.30-winx64.zip
set MARIADB_FILENAME=mariadb-10.4.30-winx64

if not exist %MARIADB_FILENAME% (
    echo  downloading %MARIADB_FILENAME%
    REM Powershell -command "$ProgressPreference = 'SilentlyContinue';wget '%MARIADB_URL%' -outfile 'mariadb-10.4.30-winx64.zip'"
    Powershell -command "$wc = New-Object net.webclient;$wc.Downloadfile('%MARIADB_URL%', '%MARIADB_FILENAME%.zip')"    
    echo  Installing %MARIADB_FILENAME%
    7zr.exe x %MARIADB_FILENAME%.zip
    pushd %MARIADB_FILENAME%
    echo Creating Database
    @call bin\mysql_install_db.exe
    popd
    del /s /q %MARIADB_FILENAME%.zip
)