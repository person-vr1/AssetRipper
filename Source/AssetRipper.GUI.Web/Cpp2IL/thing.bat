@echo off
setlocal enabledelayedexpansion

REM check if a file was dragged onto the batch script
if "%~1"=="" (
    echo No file dragged onto the script.
    pause
    exit /b
)

REM set some variablec
set "game_path=%~f1"

set "filename=%~n1"

set "exportpath=%~m1"

".\cpp-il" --game-path "!game_path!" --just-give-me-dlls-asap-dammit --output-root "D:\Cpp2Il\!filename!"

continue