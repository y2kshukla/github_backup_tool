@echo off
setlocal

:: Set paths
set SOURCE=%appdata%\StardewValley\Saves
set DEST=D:\Backups\StardewValley

:: Step 1: Copy save files
xcopy "%SOURCE%" "%DEST%" /E /Y /I

:: Step 2: Navigate to Git repo and commit
cd /d "%DEST%"
git add .
git commit -m "Auto backup on %date% %time%"
git push origin main

:: Confirmation
echo Backup and push to GitHub completed.
pause
