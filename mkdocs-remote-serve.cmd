@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS
SET script_directory=%~dp0

WHERE /Q mkdocs ^
        || ECHO The mkdocs executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

CD "%script_directory%" ^
        || ECHO Change directory to project directory failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

TITLE MkDocs Development Server
mkdocs serve --dev-addr 0.0.0.0:80 ^
        && ECHO MkDocs serve successful. ^
        || ECHO MkDocs serve failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        FOR /F "tokens=*" %%G IN ('PowerShell -NoProfile -Command "$ppid=$pid; while($i++ -lt 3 -and ($ppid=(Get-CimInstance Win32_Process -Filter ('ProcessID='+$ppid)).ParentProcessId)) {}; (Get-Process -Id $ppid).Name"') DO SET shell=%%G
        IF "%shell%"=="explorer" (
                ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                        && PAUSE
        )
        EXIT /B 0
