REM --add the following to the top of your bat file--


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
copy start.vbs "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
wsl eval "grep -qxF 'export DISPLAY=:0' ~/.profile || echo 'export DISPLAY=:0' >> ~/.profile"
wsl eval "sudo apt-get update;sudo apt-get install libpulse0 -y;echo export PULSE_SERVER=tcp:localhost >> ~/.bashrc;"
xcopy "%TMP%\PulseAudio" "%AppData%\PulseAudio\" /E /Y /I /R /D
start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\start.vbs"
msg "%username%" Setup is finished! Open a new WSL window and try a graphical program. 