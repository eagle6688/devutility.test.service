@echo off
cd..

set BASEDIR=%CD%
set SERVICE_NAME=java-daemon-test
set "SRV=%BASEDIR%\bin\prunsrv.exe"

%SRV% //DS//%SERVICE_NAME%
:end