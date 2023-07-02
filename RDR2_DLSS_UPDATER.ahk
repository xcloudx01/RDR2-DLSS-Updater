#NoEnv
#SingleInstance FORCE
SendMode Input
SetWorkingDir %A_ScriptDir%
game_path := "C:\Program Files (x86)\Steam\steamapps\Common\Red Dead Redemption 2" ;NO SLASH ON END! (Else it won't work)
game_exe := "RDR2.exe"
dll_filename := "nvngx_dlss.dll"


;Main
	loop {
		Process, Wait, %game_exe%
		IfNotExist, %dll_filename%
		{
			MsgBox, 48,,The required file `"%dll_filename%`" is missing. Make sure it is alongside this script.
			ExitApp
		}
		FileCopy, %dll_filename%, %game_path%\%dll_filename%, 1
		if errorlevel {
			MsgBox, 48,,Something went wrong and the file could not be copied (ErrorLevel %errorlevel%).`n`nCheck:`n1. The %dll_filename% exists alongside this script`n2. Your game_path variable points to your RDR2 folder`n3. Run this script as admin`n4. Fix permissions of your RDR2 folder.`n`n`n %dll_filename% %game_path%\%dll_filename%
			ExitApp
		}
		sleep,3000
		Process, WaitClose, %game_exe%
	}