@echo off
exp u8c/u8c@orcl file=E:\BACKUP\name_%date:~0,4%%date:~5,2%%date:~8,2%.dmp log=E:\BACKUP\name_%date:~0,4%%date:~5,2%%date:~8,2%.log
forfiles /p "E:\BACKUP" /s /m *.dmp /d -7 /c "cmd /c del @path" 
@exit