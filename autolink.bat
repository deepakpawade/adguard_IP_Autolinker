@echo off

title Adguard IP link check
echo %CD%
powershell -Command "(Invoke-WebRequest -uri 'https://api.ipify.org').Content.Trim()" > ip.txt
set /p ip=<ip.txt
echo current : %ip%
set /p prev_ip=<prev_ip.txt
echo previous ip : %prev_ip%
if "%ip%" == "" (
    echo cannot get current IP. Check connection.
) else (
    if "%prev_ip%"=="%ip%" (
    REM checking current and previous IP
    echo IP address has not changed since last startup.
) else (
    REM link new IP to adguard
    start firefox.exe aguard_IP_connect_link 
    REM Saving new IP address to file
    echo %ip%>prev_ip.txt
)
)


timeout /t 5