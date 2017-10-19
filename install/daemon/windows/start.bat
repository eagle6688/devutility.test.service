@echo off
cd..

set BASEDIR=%CD%
set SERVICE_NAME=java-daemon-test
set MGR=%BASEDIR%\bin\prunmgr.exe

echo start %SERVICE_NAME% 
%MGR% //MR//%SERVICE_NAME%
:end