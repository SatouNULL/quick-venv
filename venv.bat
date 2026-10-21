@echo off
for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set "PYTHON_CMD=python"

if not "%~1"=="" (
    set "PYTHON_CMD=py -%~1"
)

if not defined VIRTUAL_ENV (
    if not exist ".venv\Scripts\python.exe" (
        echo Creating a %PYTHON_CMD% virtual environment...
        %PYTHON_CMD% -m venv .venv
        if not exist ".venv\Scripts\python.exe" (
            set "PYTHON_CMD="
            set "ESC="
            echo %ESC%[31mFailed to create virtual environment.%ESC%[0m 1>&2
            exit /b
        )
    )
    call .venv\Scripts\activate.bat
) else (
    call deactivate.bat
)
set "PYTHON_CMD="
