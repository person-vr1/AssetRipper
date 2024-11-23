@echo off
setlocal enabledelayedexpansion

REM Check if a file was dragged onto the batch script
if "%~1"=="" (
    echo No file dragged onto the script.
    pause
    exit /b
)

REM Set variables based on the dragged file
set "game_path=%~f1"
set "filename=%~n1"
set "exportpath=%~dp1"

REM Use the export path for the output directory
".\cpp-il" --game-path "!game_path!" --just-give-me-dlls-asap-dammit --output-root "!exportpath!\Cpp2Il\!filename!"

pause
