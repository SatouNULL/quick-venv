@echo off
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
            echo ERROR: Failed to create virtual environment.
            exit /b
        )
    )
    call .venv\Scripts\activate.bat
) else (
    call deactivate.bat
)
set "PYTHON_CMD="


