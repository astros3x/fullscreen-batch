@echo off
set key=%temp%\tempkey.vbs
if exist "%key%" del /f /q "%key%"
echo set wshshell = wscript.createobject("wscript.shell")>>"%key%"
echo wshshell.sendkeys"{F11}">>"%key%"
cscript //nologo "%key%"
pause
