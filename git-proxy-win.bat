@echo off
:again
cls
echo.
echo.
echo ######################������######################
echo 1.����git����
echo 2.�ر�git����
set /p num=
if "%num%"=="1" (
git config --global https.proxy socks5://127.0.0.1:1080
git config --global http.proxy socks5://127.0.0.1:1080
echo �����ѿ���
)

if "%num%"=="2" (
git config --global --unset http.proxy
git config --global --unset https.proxy
echo �����ѹر�
)
git config --global --get http.proxy
git config --global --get https.proxy
pause