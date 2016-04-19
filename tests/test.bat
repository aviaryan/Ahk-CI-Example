@echo off
set err_level=0

rem http://ss64.com/nt/start.html
rem start "testing" /B /wait "C:\Program Files\AutoHotkey\AutoHotkeyU32.exe" /ErrorStdOut testMain.ahk > log.txt 2>&1

rem "C:/Program Files/AutoHotkey/AutoHotkeyU32.exe" /ErrorStdOut "testMain.ahk" 2>&1 |more
start "testing" /B /wait "C:\Program Files\AutoHotkey\AutoHotkeyU32.exe" /ErrorStdOut testMain.ahk > log.txt 2>&1
if errorlevel 1 (
	echo *** Below test failed ***
	set err_level=1
)
type log.txt
exit /b %err_level%