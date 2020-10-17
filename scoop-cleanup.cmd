@ECHO OFF
CHCP 65001
SETLOCAL ENABLEEXTENSIONS

WHERE /Q scoop ^
        || ECHO The scoop executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

scoop cache rm * ^
        || ECHO Scoop cache rm failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

scoop cleanup * ^
        && ECHO Scoop cleanup succeed. ^
        || ECHO Scoop cleanup failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% 1>NUL 2>NUL ^
                && PAUSE
        EXIT /B 0
