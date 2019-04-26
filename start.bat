wmic process where "name='Xming.exe'" delete
start "" "c:\WSL-GUI\Xming\Xming.exe\" :0 -clipboard -multiwindow
exit