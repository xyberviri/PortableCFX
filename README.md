# PortableCFX
PortableCFX provides a suite of batch files to streamline the development and management of FiveM/RedM scripts through a portable cFX server environment.

Download the project and run `0.Install.cmd` to set everything up.

When using a custom recipe make sure to use the raw path.

example: `https://raw.githubusercontent.com/Qbox-project/txAdminRecipe/main/qbox.yaml`

## PortableCFX Batch File Documentation
#### 0.Install.cmd
- Only run once, delete all folders to perform a "clean" reinstall of everything.
- Next time Start the database, Star fivem, open txadmin and connect to fivem.

#### 1.StartDatabase.cmd
- Run to start the MariaDB database.

#### 2.StartFiveM.cmd
- Run to start the FiveM server after starting the database.

#### 3.Open_txAdmin.cmd
- Opens the txAdmin web interface for server management.

#### 4.ConnectToFiveM.cmd
- Connects to the running FiveM server.

#### 5.Shutdown_Database.cmd
- Safely shuts down the database server.

#### 6.Open_Database.cmd
- Opens a connection to the database using HeidiSQL.

#### 7.Clear_Cache_CLIENT.bat & 7.Clear_Cache_SERVER.cmd
- These scripts clear your client or server cache.

#### 9. Download7Zip.cmd, DownloadHeidiSQL.cmd, DownloadMariaDB.cmd, DownloadUpdateServerFiles.cmd
- These all download the required tools, the server files are separete from the data files and can be used to update the fxserver. 

### Troubleshooting
- **Common Issues:** Make sure to start your database before starting fivem when returning to your development server.
- **Custom Recipes:** When using a custom recipe from github, always use the raw path.
- **Further Assistance:** Submit a issue if the problem is related to the scripts otherwise submit an issue or reach out on discord. 
