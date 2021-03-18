MsgBox, 4, Install Windows, Wanna upgrade to Windows Longhorn?
IfMsgBox, No
    ExitApp
IfMsgBox, Yes
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, Copying files, Please wait while Windows Longhorn installs, Install Windows
    Sleep, 65
    if (A_Index = 100)
        break
}
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
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, Windows needs to restart to continue, Please wait while Windows Setup reboots your PC, Install Windows
    Sleep, 50
    if (A_Index = 100)
        break
}
Shutdown, 6