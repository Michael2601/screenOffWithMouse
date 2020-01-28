@ECHO OFF
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
echo Current time is %mydate%:%mytime%
PowerShell.exe -ep Bypass "& '%~dpn0.ps1'"
pause