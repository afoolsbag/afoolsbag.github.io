@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS
SET script_directory=%~dp0

CD "%script_directory%" ^
        || ECHO Change directory to script directory failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

COPY /Y ".vimrc" "%USERPROFILE%\_vimrc" ^
        || ECHO Copy .vimrc to %%USERPROFILE%%\_vimrc failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

CALL :timeout10_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                && PAUSE
        EXIT /B 0
:timeout10_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                && TIMEOUT 10
        EXIT /B 0
