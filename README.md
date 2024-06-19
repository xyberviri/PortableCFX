# PortableCFX
PortableCFX provides a suite of batch files to streamline the setup of a local dev server. This is a "portable" server, as in nothing is installed not even the database and you can just delete the folder this lives in, this is not intended for hosting a live game server or really for usage outside of spinning up a machine on your dev computer and then connecting locally. If you use this for live servers to play on and stuff doesnt work i cant really help you, It may or may not work for that purpose. 

Download the project and run `0.Install.cmd` to set everything up.

When using a custom recipe make sure to use the raw path.

example: `https://raw.githubusercontent.com/Qbox-project/txAdminRecipe/main/qbox.yaml`

## PortableCFX Batch File Documentation
#### 0.Install.cmd
- run once, delete all folders to perform a "clean" reinstall of everything.

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
- Make sure to start your database before starting fivem when returning to your development server.
- When using a custom recipe from github, always use the raw path.
- Submit a issue if the problem is related to the scripts otherwise submit an issue or reach out on discord.
- open up and forward port `30120` to `30120` on your computer if you have someone else connect from outside of your network.
- make sure you have a firewall rule for `30120` which you should have accepted during setup.
- same goes for port `3306` for your local database server
