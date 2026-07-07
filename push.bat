@echo off
cd /d C:\Projects\claude-desktop-first-repo
del /f /q .git\index.lock 2>nul
git add -A
set /p msg="Commit message (or press Enter for 'Update'): "
if "%msg%"=="" set msg=Update
git commit -m "%msg%"
git push origin main
echo.
echo Done! Press any key to close.
pause >nul
