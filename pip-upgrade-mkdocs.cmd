@ECHO OFF
CHCP 65001
SETLOCAL ENABLEEXTENSIONS

WHERE /Q pip ^
        || ECHO The pip executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

pip install --upgrade pymdown-extensions ^
        && ECHO pip update pymdown-extensions succeed. ^
        || ECHO pip update pymdown-extensions failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

pip install --upgrade mkdocs ^
        && ECHO pip update mkdocs succeed. ^
        || ECHO pip update mkdocs failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% 1>NUL 2>NUL ^
                && PAUSE
        EXIT /B 0
