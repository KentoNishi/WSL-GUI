# WSL GUI 
### [Download](https://github.com/KentoNishi/WSL-GUI/raw/v3/wsl-gui-installer.exe)
A tool to enable graphical applications in Windows Subsystem for Linux.

![gedit](images/gedit.png)

## About
WSL enables developers on Windows to use the Linux environment. This project expands upon the current implementation of WSL, by enabling graphical apps with audio on your favorite distro to run on your desktop. 

## Installation
1. Click [here](https://github.com/KentoNishi/WSL-GUI/raw/v3/wsl-gui-installer.exe) to download the installer.
2. Launch the installer.
4. Allow administrator permissions and access when prompted.
5. You are good to go! Open a new WSL window, and try launching a graphical application.

## About
### Xming
This project uses the Xming X server to run graphical applications.
#### What is Xming?
> Xming is the leading X Window System Server for Microsoft Windows 8/7/Vista/XP (+ server 2012/2008/2003). It is fully featured, small and fast, simple to install and because it is standalone native Microsoft Windows, easily made portable (not needing a machine-specific installation).

Xming can be downloaded separately [here](https://sourceforge.net/projects/xming/).

### PulseAudio
This project uses the PulseAudio server to receive audio information.
### What is PulseAudio?
> PulseAudio is a sound system for POSIX OSes, meaning that it is a proxy for your sound applications. It allows you to do advanced operations on your sound data as it passes between your application and your hardware. Things like transferring the audio to a different machine, changing the sample format or channel count and mixing several sounds into one are easily achieved using a sound server.
PulseAudio is designed for Linux systems. It has also been ported to and tested on Solaris, FreeBSD, NetBSD, MacOS X, Windows 2000 and Windows XP.
PulseAudio is an integral part of all relevant modern Linux distributions and used in various mobile devices by multiple vendors.

PulseAudio can be downloaded separately [here](https://www.freedesktop.org/wiki/Software/PulseAudio/).

## Issues
* There is no uninstaller. Files must be removed manually.