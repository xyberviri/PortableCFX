@ECHO OFF
set HEIDISQL_URL=https://www.heidisql.com/downloads/releases/HeidiSQL_12.5_64_Portable.zip
set HEIDISQL_FILENAME=HeidiSQL_12.5_64_Portable

if not exist %HEIDISQL_FILENAME% (
    echo "Downloading HeidiSql"
    rem Powershell -command "$wc = New-Object net.webclient;$wc.Downloadfile('%HEIDISQL_URL%', '%HEIDISQL_FILENAME%.zip')"
    curl %HEIDISQL_URL% --output %HEIDISQL_FILENAME%.zip    
    echo "Creating Folder %HEIDISQL_FILENAME%"
    mkdir %HEIDISQL_FILENAME%
    echo "extracting"
    tar -xC %HEIDISQL_FILENAME% -f %HEIDISQL_FILENAME%.zip
    del /F /Q %HEIDISQL_FILENAME%.zip
    echo "done"
)


