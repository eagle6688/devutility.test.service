@echo off
cd..

rem Java environment

if "%JAVA_HOME%" == "" (
echo Please set JAVA_HOME environment variable.
goto :end
)

set JVM=%JAVA_HOME%\jre\bin\server\jvm.dll

rem Set service name
set SERVICE_NAME=java-daemon-test
set SERVICE_DISPLAYNAME=AAA java daemon test
set SERVICE_DESCRIPTION=A test program for daemon java

rem Set the dependency and the entrance of the the program
set BASEDIR=%CD%
set CLASSPATH=%BASEDIR%\classes;%BASEDIR%\lib\*
set MAIN_CLASS=devutility.test.service.daemon.windows.Launcher

rem Set the path of prunsrv
set SRV=%BASEDIR%\bin\prunsrv.exe

rem Set the path of log
set LOGPATH=%BASEDIR%\logs

rem echo variables
echo JAVA_HOME: %JAVA_HOME%
echo JVM: %JVM%
echo SERVICE_NAME: %SERVICE_NAME%
echo SERVICE_DISPLAYNAME: %SERVICE_DISPLAYNAME%
echo SERVICE_DESCRIPTION: %SERVICE_DESCRIPTION%
echo BASEDIR: %BASEDIR%
echo CLASSPATH: %CLASSPATH%
echo MAIN_CLASS: %MAIN_CLASS%
echo prunsrv path: %SRV%
echo LOGPATH: %LOGPATH%

rem install
%SRV% //IS//%SERVICE_NAME% --DisplayName="%SERVICE_DISPLAYNAME%" --Description="%SERVICE_DESCRIPTION%" --Classpath="%CLASSPATH%" --Install="%SRV%" --JavaHome="%JAVA_HOME%" --Jvm="%JVM%" --JvmMs=256 --JvmMx=1024 --Startup="auto" --JvmOptions="-Djcifs.smb.client.dfs.disabled=false" ++JvmOptions="-Djcifs.resolveOrder=DNS" --StartPath="%BASEDIR%" --StartMode="jvm" --StartClass="%MAIN_CLASS%" --StartMethod="start" --StopPath="%BASEDIR%" --StopMode="jvm" --StopClass="%MAIN_CLASS%" --StopMethod="stop" --LogPath="%LOGPATH%" --StdOutput="auto" --StdError="auto"

:end
pause