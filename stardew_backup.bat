@echo off
set SOURCE=%appdata%\StardewValley\Saves
set DEST=D:\Backups\StardewValley
xcopy "%SOURCE%" "%DEST%" /E /Y /I
echo Backup completed.
pause
