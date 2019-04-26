wmic process where "name='Xming.exe'" delete
start "" "c:\Program Files (x86)\Xming\Xming.exe\" :0 -clipboard -multiwindow
exit