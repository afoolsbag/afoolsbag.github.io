@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS

WHERE /Q scoop ^
        || ECHO The scoop executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

:: Python
WHERE /Q python
IF %ERRORLEVEL% NEQ 0 (
        WHERE /Q pyenv
        IF %ERRORLEVEL% NEQ 0 (
                START "" /B /WAIT CMD /C scoop install pyenv ^
                        && ECHO Scoop install pyenv successful. ^
                        || ECHO Scoop install pyenv failed. ^
                        && CALL :pause_if_double_click ^
                        && EXIT /B 2

                SETX PYTHON_BUILD_MIRROR_URL https://registry.npmmirror.com/binary.html?path=python/ ^
                        && ECHO Set PYTHON_BUILD_MIRROR_URL successful. ^
                        || ECHO Set PYTHON_BUILD_MIRROR_URL failed. ^
                        && CALL :pause_if_double_click ^
                        && EXIT /B 3

                START "" /B /WAIT CMD /C pyenv update ^
                        && ECHO pyenv update successful. ^
                        || ECHO pyenv update failed. ^
                        && CALL :pause_if_double_click ^
                        && EXIT /B 4
        )

        START "" /B /WAIT CMD /C pyenv install 3.10.4 ^
                && ECHO pyenv install successful. ^
                || ECHO pyenv install failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 5

        START "" /B /WAIT CMD /C pyenv global 3.10.4 ^
                && ECHO pyenv global successful. ^
                || ECHO pyenv global failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 6

        START "" /B /WAIT CMD /C pyenv rehash ^
                && ECHO pyenv rehash successful. ^
                || ECHO pyenv rehash failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 7

        START "" /B /WAIT CMD /C pip config set global.index-url https://pypi.doubanio.com/simple
                && ECHO pip config set global.index-url successful. ^
                || ECHO pip config set global.index-url failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 8
)

:: Node.js
WHERE /Q node
IF %ERRORLEVEL% NEQ 0 (
        WHERE /Q nvm
        IF %ERRORLEVEL% NEQ 0 (
                START "" /B /WAIT CMD /C scoop install nvm ^
                        && ECHO Scoop install nvm successful. ^
                        || ECHO Scoop install nvm failed. ^
                        && CALL :pause_if_double_click ^
                        && EXIT /B 9
                
                START "" /B /WAIT CMD /C nvm node_mirror https://registry.npmmirror.com/binary.html?path=node/ ^
                        && ECHO Set node_mirror successful. ^
                        || ECHO Set node_mirror failed. ^
                        && CALL :pause_if_double_click ^
                        && EXIT /B 10

                START "" /B /WAIT CMD /C nvm npm_mirror https://registry.npmmirror.com/binary.html?path=npm/ ^
                        && ECHO Set npm_mirror successful. ^
                        || ECHO Set npm_mirror failed. ^
                        && CALL :pause_if_double_click ^
                        && EXIT /B 11
        )

        START "" /B /WAIT CMD /C nvm install latest ^
                && ECHO nvm install successful. ^
                || ECHO nvm install failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 12

        START "" /B /WAIT CMD /C nvm use newest ^
                && ECHO nvm use successful. ^
                || ECHO nvm use failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 13

        START "" /B /WAIT CMD /C npm config set registry https://registry.npmmirror.com/ ^
                && ECHO npm config set registry successful. ^
                || ECHO npm config set registry failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 14
)

ECHO Environment initialize successful.
CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                && PAUSE
        EXIT /B 0
