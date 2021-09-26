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

ECHO Delaying visit http://127.0.0.1:49152/ with explorer and waiting service startup.
START "Delaying Visit and Waiting Server Startup" /MIN CMD /C "TIMEOUT 15 /NOBREAK & EXPLORER http://127.0.0.1:49152/"

TITLE MkDocs Development Server
mkdocs serve --dev-addr 127.0.0.1:49152 ^
        && ECHO MkDocs serve successful. ^
        || ECHO MkDocs serve failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^^
                && PAUSE
        EXIT /B 0
