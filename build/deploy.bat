@echo off
title Installing verification-code-generator
call msg info "[INFO] Installing verification-code-generator" & echo.

set BASEDIR=%~dp0

pushd %BASEDIR%\..\src\simple-image
  call mvn clean deploy -DperformTest=true -DperformSource=true -DperformDeploy=true
popd

call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 
call beep.bat
timeout /t 1 >NUL 

pause