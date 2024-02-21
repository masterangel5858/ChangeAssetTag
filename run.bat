@echo off
REM Open the text file
set current=%~dp0
setlocal enableDelayedexpansion

:getcompname
for /f "skip=1 delims=" %%a in ('wmic bios get serialnumber') do (
    set "serialNumber=%%a"
    echo !serialNumber!
    
    REM Processing using the serial number should happen here
    :search
    FOR /F "tokens=4 delims=; " %%i in ('findstr /c "!serialNumber!" /F %current%AssetMapping.json') do (
        set "Step=%%~i"
        if defined Step (
            echo Serial number found 
            ECHO step : !Step!
            echo.AssetTag=!step!>%current%AssetTag.txt
            echo.##กรอกค่าหลังจาก = จากนั้นกด File - Save>>%current%AssetTag.txt
            echo.และปิดโปรแกรมเพื่อดำเนินการต่อ>>%current%AssetTag.txt
        ) else (
            echo Serial number not found 
            Pause
            exit /b 1
        )
    )
)

start /wait %current%AssetTag.txt

REM Run the setup batch file
call %current%setup.bat
