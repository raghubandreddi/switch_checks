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
echo Script Start time  >SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
time.bat >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo ############################################ >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.84.93.102     -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.84.93.103     -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.204.104   -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.204.105   -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.186.135.104   -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.186.135.105   -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.237	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.238	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.11.207	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.11.208	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.205.53    -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.205.54    -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.218   -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.219   -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.25.157	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.25.158	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.178	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.179	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.186.132.44	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.186.132.45	 -pw %pwd1% -m pecmds.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt



echo y | plink -l %user1% 10.240.208.100   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.101   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.102   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.103   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.45   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.46   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.47   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.48   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.49   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.50   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.51   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.52   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.53   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.54   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.55   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.56   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.57   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.58   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.59   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.60   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.61   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.62   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.63   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.64   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.65   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.66   -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.140  -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.141  -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.37.78    -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.240.37.79    -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.160.1.61     -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo y | plink -l %user1% 10.160.1.62     -pw %pwd1% -m ciscosw.txt >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt





echo ############################################ >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
echo Script end time  >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
time.bat >>SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt
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
echo Script Start time >SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
time.bat >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo ############################################ >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.84.93.102    -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.84.93.103    -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.204.104  -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.204.105  -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.186.135.104  -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo ############################################
echo y | plink -l %user1% 10.186.135.105  -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.237	-pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.238	-pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.11.207	 -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.11.208	 -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo ############################################
echo y | plink -l %user1% 10.240.205.53   -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.205.54   -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.218  -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.219  -pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.25.157	-pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.25.158	-pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo ############################################
echo y | plink -l %user1% 10.180.4.178	-pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.180.4.179	-pw %pwd1% -m cmds1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.100   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.101   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.102   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.103   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.45   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.46   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.47   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.48   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.49   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.50   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.51   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.52   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.53   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.54   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.55   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.56   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.57   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.58   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.59   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.60   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.61   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.62   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.63   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.64   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.65   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.66   -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.140  -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.208.141  -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.37.78    -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.240.37.79    -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.160.1.61    -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo y | plink -l %user1% 10.160.1.62    -pw %pwd1% -m ciscosw1.txt >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt


echo ############################################ >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
echo Script end time >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
time.bat >>SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt
cls
echo.
echo.
echo          ********************************************************************
echo.
echo              Collecting errdump report on all switches......
echo.
echo          !!!!!!! Contacting mail server to publish this report !!!!!!
echo.
mailscript1.bat
echo.
echo          !!!!!!! Contacted mail server!!! sending your report in mail !!!!!!
echo.
echo.
dd1.vbs
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
