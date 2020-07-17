@ECHO OFF
CHCP 65001
SETLOCAL ENABLEEXTENSIONS

WHERE /Q pip ^
        || ECHO The pip executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

pip install --upgrade mkdocs ^
        && ECHO pip update mkdocs succeed. ^
        || ECHO pip update mkdocs failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% 1>NUL 2>NUL ^
                && PAUSE
        EXIT /B 0
