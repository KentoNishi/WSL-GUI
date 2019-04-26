@echo off
TITLE WSL-GUI Installer
copy start.bat "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
wsl eval "grep -qxF 'export DISPLAY=:0' ~/.profile || echo 'export DISPLAY=:0' >> ~/.profile"
start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\start.bat"
clear
msg "%username%" Setup is finished! Open a new WSL window and try a graphical program.