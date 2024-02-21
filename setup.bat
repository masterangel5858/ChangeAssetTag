@echo off
setlocal enabledelayedexpansion

REM Set the CurrentDir variable
set current=%~dp0
set "CurrentDir=%~dp0Command Configure\X86_64"
set "file=%~dp0AssetTag.txt"

REM Check if the file exists
if exist "%file%" (
    echo AssetTag.txt has found
) else (
    echo Not found AssetTag.txt
	PAUSE
	echo Creating AssetTag.txt...
	echo.AssetTag=> AssetTag.txt
	exit
)

REM Use findstr to search for "AssetTag=" and extract the value after "="
for /f "tokens=2 delims==" %%A in ('findstr /i "AssetTag=" "%file%"') do (
    REM Assign the value to the data variable
    set "data=%%A"
    REM Set the flag variable to indicate that the value is found
    REM Exit the loop once the value is found
    goto :setup
)


:setup
echo Setting up.....
echo Asset Tag: !data!
cd %CurrentDir%
cctk --Asset=!data!
cd\
cd\
cd\
echo Press Enter To delete This File
cls
echo This File Will Deleted Itself
call %current%delete.bat
