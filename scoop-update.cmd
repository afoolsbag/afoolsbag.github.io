@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS

WHERE /Q scoop ^
        || ECHO The scoop executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

START "" /B /WAIT CMD /C scoop update * ^
        && ECHO Scoop update successful. ^
        || ECHO Scoop update failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^^
                && PAUSE
        EXIT /B 0
