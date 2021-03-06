#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#NoTrayIcon
 
; Border-less Maximized CTRL+ALT+F
^!f::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
    WinSet, Style, ^0xC00000 ; toggle title bar
    WinMove, , , 0, 0, 1920, 1080 ; adjust to your resolution
}
return
 
; Border-less Maximized CTRL+ALT+G
^!g::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
   WinSet, Style, -0xC00000 ; hide title bar
   WinSet, Style, -0x800000 ; hide thin-line border
   WinSet, Style, -0x400000 ; hide dialog frame
   WinSet, Style, -0x40000 ; hide thick-frame/size-box
   WinMove, , , 0, 0, 1920, 1080 ; adjust to your resolution
}
return
