@echo off
set /a i=0
:loop
if %i%==20 goto end
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,100)
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,0)
set /a i=%i%
goto loop
:end