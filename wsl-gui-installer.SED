[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=0
HideExtractAnimation=0
UseLongFileName=1
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=I
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles
[Strings]
InstallPrompt=If Windows prompts for any permissions, click yes.
DisplayLicense=
FinishMessage=Setup is finished! Open a new WSL window and try a graphical program.
TargetName=C:\Users\kento\Documents\GitHub\WSL-GUI\wsl-gui-installer.exe
FriendlyName=WSL-GUI
AppLaunched=cmd.exe /c install.bat
PostInstallCmd=<None>
AdminQuietInstCmd=
UserQuietInstCmd=
FILE0="install.bat"
[SourceFiles]
SourceFiles0=C:\Users\kento\Documents\GitHub\WSL-GUI\
[SourceFiles0]
%FILE0%=
