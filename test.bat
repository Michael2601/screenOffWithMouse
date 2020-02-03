@ECHO OFF

title Command Prompt

For /f "tokens=4,5,6 delims=[]. " %%G in ('ver') Do (set _major=%%G& set _minor=%%H& set _build=%%I) 
echo Microsoft Windows [Version %_major%.%_minor%.%_build%]
echo (c) 2018 Microsoft Corporation. All rights reserved.
echo. 
<nul set /p strTemp=C:\^>
PowerShell.exe -ep Bypass "& '%~dpn0.ps1'"
pause