#NoTrayIcon
#SingleInstance ignore
MsgBox, 4, , This is a confidential Microsoft Windows build of our upcoming OS, Longhorn. If this build is leaked. You will face legal consequences. Press Yes to accept, and No to decline
IfMsgBox, No
ExitApp
IfMsgBox, Yes
FileInstall, setupwallpaper.jpg, 5048wallpaper.jpg, 1
SplashImage, %A_ScriptDir%\5048wallpaper.jpg, A,,, Preparing to install Microsoft Longhorn (Build 5048)
MsgBox, 4, Install Windows, Would you like to proceed with Longhorn installation?
IfMsgBox, No
ExitApp
IfMsgBox, Yes
SplashImage, %A_ScriptDir%\5048wallpaper.jpg, A,,, Installing Microsoft Longhorn (Build 5048)
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, Copying files, Please wait while Windows Longhorn installs, Install Windows
    Sleep, 65
    if (A_Index = 100)
        break
}
Run, cmd /c exit
Run, cmd /c exit
Run, cmd /c exit
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, Expanding files, Please wait while Windows Longhorn installs, Install Windows
    Sleep, 1000
    if (A_Index = 100)
        break
}
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, Installing features and updates, Please wait while Windows Longhorn installs, Install Windows
    Sleep, 95
    if (A_Index = 100)
        break
}
Run, cmd /c exit
Run, cmd /c exit
Run, cmd /c exit
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, Please wait, Removing all temporary files used, Install Windows
    Sleep, 50
    if (A_Index = 100)
        break
}
SplashImage, %A_ScriptDir%\5048wallpaper.jpg, A,,, Preparing to complete setup
MsgBox, 4, , You need to reboot to complete setup, would you like to reboot now?
IfMsgBox, No
    ExitApp
IfMsgBox, Yes
    Shutdown, 6
