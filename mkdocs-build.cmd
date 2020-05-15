@ECHO OFF
CHCP 65001
SETLOCAL ENABLEEXTENSIONS
SET script_directory=%~dp0

WHERE /Q mkdocs ^
        || ECHO The mkdocs executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

mkdocs build --strict ^
        && ECHO MkDocs build succeed. ^
        || ECHO MkDocs build failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% 1>NUL 2>NUL ^
                && PAUSE
        EXIT /B 0
