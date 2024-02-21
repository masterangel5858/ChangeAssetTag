@echo off

echo Deleting...

timeout /t 10
REM Get the directory of the batch script
set "scriptdir=%~dp0"

REM Get the parent directory of the batch script
set "parentdir=%scriptdir%"

REM Display the parent directory for debugging
echo Parent directory: %parentdir%

REM Remove the trailing backslash from parent directory
if "%parentdir:~-1%"=="\" (
    set "parentdir=%parentdir:~0,-1%"
)

REM Display the parent directory after removing trailing backslash
echo Parent directory (without trailing backslash): %parentdir%

REM Attempt to forcefully delete the folder
rmdir /s /q "%parentdir%"

pause
