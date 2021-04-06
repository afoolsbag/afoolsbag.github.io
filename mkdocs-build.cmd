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

mkdocs build --strict ^
        && ECHO MkDocs build succeed. ^
        || ECHO MkDocs build failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% > NUL ^
                && PAUSE
        EXIT /B 0
