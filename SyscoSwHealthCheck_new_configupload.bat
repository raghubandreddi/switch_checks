@echo off
cls
echo                   *******************************
echo                   Welcome to sysco HC Version 1.0
echo                   *******************************
echo.
echo.
set /p user= Enter user name for switches : 
set /p pwd= Enter password for switches : 
set ftphost=10.220.40.189
set /p ftpuser= Enter ftp user name : 
set /p ftppwd= Enter ftp password  : 
set today=%date:~10,4%_%date:~4,2%_%date:~7,2%
set cond=y
set cond2=n
set /p cond2= Do you wish to continue (y/n) : 
cls
if %cond2% == %cond% (
echo on
plink -l %user% 10.220.40.14 -pw %pwd% -m cmds.txt  >SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.40.15 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.40.14 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.40.15 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.64.14 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.64.15 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.64.52 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.64.53 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.64.24 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.220.64.25 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.14 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.82 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.25 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.53 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.15 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.24 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.52 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user% 10.201.64.81 -pw %pwd% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt

plink -l %user% 10.220.40.14 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.40.15 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.40.14 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.40.15 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.64.14 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.64.15 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.64.52 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.64.53 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.64.24 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.220.64.25 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.14 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.82 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.25 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.53 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.15 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.24 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.52 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
plink -l %user% 10.201.64.81 -pw %pwd% "configupload -scp " %ftphost%,%ftpuser%,`switchname`_%today%.txt,%ftppwd% 
echo.
echo.
echo          **************************************************
echo.
echo          !!!!!!! Congracts !! Health Check Completed !!!!!!
echo.
echo          **************************************************


set cond2=
set user=
set ftpuser=
set pwd=
set ftppwd=
set ftphost=
pause
)  else (
echo.
echo.
echo            **********************************************
echo.           
echo            !!!!!!!!! Exiting Health Check script !!!!!!!!
echo.           
echo            **********************************************

set cond2=
set user=
set ftpuser=
set pwd=
set ftppwd=
set ftphost=
pause
cls
)