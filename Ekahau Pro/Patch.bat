@set @x=0; /*
@echo off
title Ekahau conf Patch
echo         7z	  Igor Pavlov
for /f "Tokens=2*" %%I in ('reg query "HKLM\SOFTWARE\Ekahau\ess" /s') do echo.%%J | findstr /c:":">nul && (set InstallDirectory=%%J)
ver |>NUL find /v "5." && if "%~1"=="" cscript.exe //nologo //e:jscript "%~f0"& exit /b
title Ekahau conf Patch
copy "%InstallDirectory%\conf\antennas.zip" "%~dp0antennas_backup.zip" /Y>nul
copy "%InstallDirectory%\conf\accessPointTypes.xml" "%~dp0accessPointTypes_backup.xml" /Y>nul
start /wait "" "%~dp07za.exe" a "%InstallDirectory%\conf\antennas.zip" "%~dp0conf\antennas\*.json" -y
pause
*/new ActiveXObject('Shell.Application').ShellExecute (WScript.ScriptFullName,'Admin','','runas',1);