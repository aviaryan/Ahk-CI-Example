@echo off
set err_level=0

rem http://ss64.com/nt/start.html
rem http://stackoverflow.com/questions/138497/iterate-all-files-in-a-directory-using-a-for-loop for file loops

rem "C:/Program Files/AutoHotkey/AutoHotkeyU32.exe" /ErrorStdOut "testMain.ahk" 2>&1 |more

rem Loop over all ahk files in tests directory
for /r %%i in (*.ahk) do (
	start "testing" /B /wait "C:\Program Files\AutoHotkey\AutoHotkeyU32.exe" /ErrorStdOut %%~nxi > testoutput.txt 2>&1
	if errorlevel 1 (
		echo *** Test File %%~nxi Failed ***
		set err_level=1
	)
	type testoutput.txt
)


rem EXIT SCRIPT
exit /b %err_level%