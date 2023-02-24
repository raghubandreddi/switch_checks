@echo off
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
echo Script Start time  >SYSCO_SAN_Health_check_Report_%today%.txt
time.bat >>SYSCO_SAN_Health_check_Report_%today%.txt
echo ############################################ >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.40.14 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.40.15 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.40.14 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.40.15 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.64.14 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.64.15 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.64.52 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.64.53 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.64.24 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.64.25 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.14 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.82 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.25 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.53 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.15 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.24 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.52 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.64.81 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt

plink -l %user1% 10.201.16.221 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.16.218 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.20.35 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.20.38 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.20.139 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.201.20.140 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.20.139 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt
plink -l %user1% 10.220.20.140 -pw %pwd1% -m cmds.txt >>SYSCO_SAN_Health_check_Report_%today%.txt

echo ############################################ >>SYSCO_SAN_Health_check_Report_%today%.txt
echo Script end time  >>SYSCO_SAN_Health_check_Report_%today%.txt
time.bat >>SYSCO_SAN_Health_check_Report_%today%.txt
echo.
echo.
echo.
echo !!!!!!! Port error report is completed !!!!!!!!
echo.
echo.
echo Collecting errdump report on all switches......
echo.
echo.
echo.
echo ###############################################
echo Script Start time >SYSCO_SAN_errdump_Report_%today%.txt
time.bat >>SYSCO_SAN_errdump_Report_%today%.txt
echo ############################################ >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.40.14 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.40.15 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.40.14 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.40.15 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.64.14 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.64.15 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt


plink -l %user1% 10.220.20.35 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.20.38 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.16.218 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.16.221 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt

echo ###############################################
plink -l %user1% 10.220.64.52 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.64.53 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.64.24 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.64.25 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.14 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
echo ###############################################
plink -l %user1% 10.201.64.82 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.25 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.53 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.15 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.24 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.52 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.64.81 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.20.139 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.201.20.140 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.20.139 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt
plink -l %user1% 10.220.20.140 -pw %pwd1% -m cmds1.txt >>SYSCO_SAN_errdump_Report_%today%.txt


echo ############################################ >>SYSCO_SAN_errdump_Report_%today%.txt
echo Script end time >>SYSCO_SAN_errdump_Report_%today%.txt
time.bat >>SYSCO_SAN_errdump_Report_%today%.txt
cls
echo.
echo.
echo          ********************************************************************
echo.
echo              Collecting errdump report on all switches......
echo.
echo          !!!!!!! Contacting mail server to publish this report !!!!!!
echo.
mailscript.bat
echo.
echo          !!!!!!! Contacted mail server!!! sending your report in mail !!!!!!
echo.
echo.
dd.vbs
echo.
echo.
echo.
echo          !!!!!!! Congracts !! Health Check Completed !!!!!!
echo.
echo          *********************************************************************
set cond2=
set user1=
set pwd1=
set pwd2=
pause
) else (
echo.
echo.
echo            **********************************************
echo.           
echo            !!!!!!!!! Exiting Health Check script !!!!!!!!
echo.           
echo            **********************************************
set cond2=
set user1=
set pwd1=
set pwd2=
pause
cls
)
