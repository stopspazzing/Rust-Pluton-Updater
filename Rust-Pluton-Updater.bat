@ECHO OFF
REM First batch was created by Skippi.
echo.
echo.
echo ========================================
echo ========================================
echo ======Auto update script by Skippi======
echo ========================================
echo ========================================
echo.
echo.
IF NOT EXIST .\steamcmd\steamcmd.exe (
wget.exe https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip --no-check-certificate
7za.exe x .\steamcmd.zip -o.\steamcmd -y
)
IF EXIST .\steamcmd.zip (
DEL .\steamcmd.zip
)
REM Next line verifies and downloads any new version of RUST if needed this is by Skippi
.\steamcmd\steamcmd.exe +login anonymous +force_install_dir ../Server +app_update 258550 validate +quit
REM This was next part created by CorrosionX - You may thank him in the http://forum.pluton-team.org if you so like.
echo.
echo //--------------------------------------------------------------------\\
echo //------		Updater By CorrosionX  			------\\
echo                            pluton-team.org                     
echo //--------------------------------------------------------------------\\
echo.
REM Remove old pluton/rust files
IF EXIST .\Pluton-master\ (
DEL .\Pluton-master\*.* /q
rmdir /s /q .\Pluton-master\
)
REM This runs the Pluton-Updater.bat after updating/verifying rust server has been created.
.\Pluton-Updater.bat