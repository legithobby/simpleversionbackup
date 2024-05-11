@echo off

set "bindir=E:\data\bin"
set args=%*

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%bindir%\MakeBackup.ps1" %args%