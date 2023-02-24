@echo off
setlocal

for /f %%I in ('wmic os get localdatetime /format:list ^| find "="') do set "%%I"
set "YYYY=%localdatetime:~0,4%"
set /a "MM=1%localdatetime:~4,2% - 100"
set  "DD=%localdatetime:~6,2% "
if "%DD:~0,1%"=="0" (set DD=%DD:~1%)
set /a DD1=%DD%-1 

for /f "tokens=%MM%" %%I in ("JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC") do set "month=%%I"

echo sh module ; > ciscosw.txt
echo sh hardware ; >> ciscosw.txt
echo sh clock ; >> ciscosw.txt


echo sh logging logfile start-time %YYYY% %month% %DD1% 00:00 ; >ciscosw1.txt

