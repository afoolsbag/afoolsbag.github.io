@ECHO OFF
CHCP 65001
SETLOCAL ENABLEEXTENSIONS
SET script_directory=%~dp0

WHERE /Q mkdocs ^
        || ECHO The mkdocs executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

explorer http://127.0.0.1:49152/
ECHO Visit http://127.0.0.1:49152/ with explorer and waiting service startup.

mkdocs serve ^
        && ECHO MkDocs serve succeed. ^
        || ECHO MkDocs serve failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% 1>NUL 2>NUL ^
                && PAUSE
        EXIT /B 0
