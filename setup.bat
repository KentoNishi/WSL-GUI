@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

@echo off
TITLE WSL-GUI Installer
copy start.vbs "%userprofile%/WSL-GUI/"
wsl eval "grep -qxF 'export DISPLAY=:0' ~/.profile || echo 'export DISPLAY=:0' >> ~/.profile"
wsl eval "sudo apt-get update;sudo apt-get install libpulse0 -y;echo export PULSE_SERVER=tcp:localhost > ~/.bashrc;echo cmd.exe /c 'start %userprofile%/WSL-GUI/start.vbs'>> ~/.bashrc;"
xcopy "%TMP%\PulseAudio" "%AppData%\PulseAudio\" /E /Y /I /R /D
waitfor /T 1 echo
msg "%username%" Setup is finished! Open a new WSL window and try a graphical program. 