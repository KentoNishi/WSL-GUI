# WSL GUI 
### [Download](https://github.com/KentoNishi/WSL-GUI/raw/master/wsl-gui.EXE)
A tool to enable graphical applications in Windows Subsystem for Linux.

![gedit](images/gedit.png)

## About
WSL enables developers on Windows to use the Linux environment. This project expands upon the current implementation of WSL, enabling graphical apps on your favorite distro to run on your desktop. 

## Installation
1. Click [here](https://github.com/KentoNishi/WSL-GUI/raw/master/wsl-gui.EXE) to download the installer.
2. Expand the downloaded executable, and click "Show in Folder".

![show](images/show.png)

3. Right click the executable, and click "Run as administrator".

![admin](images/admin.png)

4. If a warning message appears, click "More info" and click "Run anyway".

![admin](images/defender.png)

5. Complete the Xming setup. 
> If you already have Xming installed, simply close the installation window.

![admin](images/xming.png)

6. After a few moments, a message should appear, indicating success. This message will close on it's own if left idle.

![admin](images/message.png)

7. You are good to go! Open a new WSL window, and try opening a graphical application.

## About
### What is Xming?
> Xming is the leading X Window System Server for Microsoft Windows 8/7/Vista/XP (+ server 2012/2008/2003). It is fully featured, small and fast, simple to install and because it is standalone native Microsoft Windows, easily made portable (not needing a machine-specific installation).

Xming can be downloaded separately [here](https://sourceforge.net/projects/xming/).