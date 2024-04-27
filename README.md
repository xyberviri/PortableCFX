# PortableCFX
PortableCFX provides a suite of batch files to streamline the development and management of FiveM/RedM scripts through a portable cFX server environment.

Download the project and run `0.Install.cmd` to set everything up.

When using a custom recipe make sure to use the raw path.

example: `https://raw.githubusercontent.com/Qbox-project/txAdminRecipe/main/qbox.yaml`

## PortableCFX Batch File Documentation
#### 0.Install.cmd
- **Purpose:** Installs necessary components and sets up the development environment.
- **Usage:** Run this file first to prepare the environment for server operations.
- Only run once, delete all folders to perform a "clean" reinstall of everything.

#### 1.StartDatabase.cmd
- **Purpose:** Initiates the database server required for the development environment.
- **Usage:** Run to start the MariaDB database.

#### 2.StartFiveM.cmd
- **Purpose:** Launches the FiveM server.
- **Usage:** Run to start the FiveM server after starting the database.

#### 3.ConnectToFiveM.cmd
- **Purpose:** Connects to the running FiveM server.
- **Usage:** Execute to connect to an active FiveM server instance.

#### 4.Open_txAdmin.cmd
- **Purpose:** Opens the txAdmin web interface for server management.
- **Usage:** Run to manage the FiveM server through txAdmin.

#### 5.Shutdown_Database.cmd
- **Purpose:** Safely shuts down the database server.
- **Usage:** Use to close the MariaDB database when not in use.

#### 6.Open_Database.cmd
- **Purpose:** Opens a connection to the database using HeidiSQL.
- **Usage:** Execute to manage the database directly via HeidiSQL.

#### 7.Clear_Cache_CLIENT.bat & 7.Clear_Cache_SERVER.cmd
- **Purpose:** Clears the client and server cache respectively.
- **Usage:** Run to clear cache files to ensure clean script testing.

#### 9. Download7Zip.cmd, DownloadHeidiSQL.cmd, DownloadMariaDB.cmd, DownloadUpdateServerFiles.cmd
- **Purpose:** Downloads necessary tools and updates for the development environment.
- **Usage:** Execute these files to acquire or update 7Zip, HeidiSQL, MariaDB, or server files as needed.

### Troubleshooting
- **Common Issues:** Make sure to start your database before starting fivem when returning to your development server.
- **Custom Recipes:** When using a custom recipe from github, always use the raw path.
- **Further Assistance:** Submit a issue if the problem is related to the scripts otherwise contact the framework maintainer.
