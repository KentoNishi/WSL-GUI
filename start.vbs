Set WshShell = CreateObject("WScript.Shell" ) 
WshShell.Run chr(34) & "C:\WSL-GUI\start.bat" & Chr(34), 0 
WshShell.run "%AppData%\PulseAudio\bin\pulseaudio.exe --exit-idle-time=-1",0
Set WshShell = Nothing 