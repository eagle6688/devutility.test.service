@echo off

rem Set service name
set SERVICE_NAME=java-daemon-test
set SERVICE_DESCRIPTION=A test program for daemon java

rem Set the java home
set JAVA_HOME=D:\Program Files\Java\jdk1.8.0_141

rem Set the dependency and the entrance of the the program
cd..
set BASEDIR=%CD%
set CLASSPATH=%BASEDIR%\classes;%BASEDIR%\lib\*
set MAIN_CLASS=devutility.test.service.daemon.windows.Launcher

rem Set the path of prunsrv
set SRV=%BASEDIR%\bin\prunsrv.exe

rem Set the path of log
set LOGPATH=%BASEDIR%\logs

rem echo variables
echo SERVICE_NAME: %SERVICE_NAME%
echo JAVA_HOME: %JAVA_HOME%
echo MAIN_CLASS: %MAIN_CLASS%
echo prunsrv path: %SRV%

rem Set jvm
if "%JVM%" == "" goto findJvm
if exist "%JVM%" goto foundJvm

:findJvm
set "JVM=%JAVA_HOME%\jre\bin\server\jvm.dll"
if exist "%JVM%" goto foundJvm
echo can not find jvm.dll automatically,
echo please use COMMAND to localation it
echo for example : set "JVM=C:\Program Files\Java\jdk1.8.0_141\jre\bin\server\jvm.dll"
echo then install service
goto end

:foundJvm
rem install
"%SRV%" //IS//%SERVICE_NAME% --DisplayName="%SERVICE_DESCRIPTION%" "--Classpath=%CLASSPATH%" "--Install=%SRV%" "--JavaHome=%JAVA_HOME%" "--Jvm=%JVM%" --JvmMs=256 --JvmMx=1024 --Startup=auto --JvmOptions=-Djcifs.smb.client.dfs.disabled=false ++JvmOptions=-Djcifs.resolveOrder=DNS "--StartPath=%BASEDIR%" --StartMode=jvm --StartClass=%MAIN_CLASS% --StartMethod=start "--StopPath=%BASEDIR%" --StopMode=jvm --StopClass=%MAIN_CLASS% --StopMethod=stop --LogPath=%LOGPATH% --StdOutput=auto --StdError=auto

:end