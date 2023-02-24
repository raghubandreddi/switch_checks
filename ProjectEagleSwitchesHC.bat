@echo off
call ciscocmds.bat
cls
echo                   *******************************
echo                   Welcome to sysco HC Version 1.0
echo                   *******************************
echo.
echo.
set today=%date:~10,4%_%date:~4,2%_%date:~7,2%
set /p user1= Enter user name for switches : 
set /p pwd1= Enter password for switches : 
set cond=y
set cond2=n
set /p cond2= Do you wish to continue (y/n) : 
cls
if %cond2% == %cond% (
echo on
echo Script Start time  >Project_SAN_Health_check_Report_%today%.txt
time.bat >>Project_SAN_Health_check_Report_%today%.txt
echo ############################################ >>Project_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.104.251.124     -pw %pwd1% -m pecmds.txt >>Project_SAN_Health_check_Report_%today%.txt
