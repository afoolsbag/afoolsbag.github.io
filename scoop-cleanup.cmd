@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS

WHERE /Q scoop ^
        || ECHO The scoop executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

START "" /B /WAIT CMD /C ^
        scoop cleanup * ^
        && ECHO Scoop cleanup succeed. ^
        || ECHO Scoop cleanup failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

START "" /B /WAIT CMD /C ^
        scoop cache rm * ^
        && ECHO Scoop cache rm succeed. ^
        || ECHO Scoop cache rm failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% > NUL ^
                && PAUSE
        EXIT /B 0
