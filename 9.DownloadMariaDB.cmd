@ECHO OFF
set MARIADB_URL=https://archive.mariadb.org/mariadb-10.4.30/winx64-packages/mariadb-10.4.30-winx64.zip
set MARIADB_FILENAME=mariadb-10.4.30-winx64

if not exist %MARIADB_FILENAME% (
    echo "downloading %MARIADB_FILENAME%"
    rem Powershell -command "$wc = New-Object net.webclient;$wc.Downloadfile('%MARIADB_URL%', '%MARIADB_FILENAME%.zip')"
    curl %MARIADB_URL% --output %MARIADB_FILENAME%.zip
    echo "extracting"
    tar -xf %MARIADB_FILENAME%.zip
    pushd %MARIADB_FILENAME%
    echo "Creating Database"
    @call bin\mysql_install_db.exe
    popd
    del /s /q %MARIADB_FILENAME%.zip
    echo "done"
)