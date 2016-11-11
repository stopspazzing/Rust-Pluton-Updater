@ECHO OFF
REM This was created by Corrosion X - You may thank him in the http://forum.pluton.team if you so like.
REM Making sure you ran Rust Pluton Updater first...
IF NOT EXIST .\server\RustDedicated_Data\Managed (
ECHO You need to run Rust-Pluton-Updater first!
PAUSE
EXIT
)
IF EXIST .\*.zip (
DEL .\*.zip /q
)
:choice
ECHO  1.stable-patched 2.latest-patched
SET /p "Choice=What file do you want?"
IF %Choice% == 1 (
REM stable patched is available.
wget.exe https://dl.pluton.team/pluton_rust_patched_stable_win.zip --no-check-certificate
7za.exe x .\pluton_rust_patched_stable_win.zip -o .\server\RustDedicated_Data\Managed -y
GOTO :finished
)
IF %Choice% == 2 (
REM Latest patched is available if you like, but possibly buggy.
wget.exe https://dl.pluton.team/pluton_rust_patched_latest_win.zip --no-check-certificate
7za.exe x .\pluton_rust_patched_latest_win.zip -o .\server\RustDedicated_Data\Managed -y
GOTO :finished
)
ECHO Invalid Choice
GOTO :choice
:finished
REM Clean update after your messy self...
IF EXIST .\*.zip (
DEL .\*.zip /q
)
ECHO Everything Done!
REM Remove the REM below if you want to check output
REM PAUSE
REM If you want to start your server automatically, replace the info before with your cmdline and remove both "REM" on last lines
REM RustDedicated.exe doesnt like being run directly from any other folder, you have to enter its folder before running.
REM cd .\server
REM .\RustDedicated.exe -batchmode +server.hostname "Testing" +server.port 28015 +server.globalchat true +server.worldsize 8000