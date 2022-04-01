@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS

WHERE /Q pip ^
        || ECHO The pip executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

WHERE /Q pyenv ^
        && START "" /B /WAIT CMD /C pyenv rehash

START "" /B /WAIT CMD /C pip install --upgrade mkdocs-material ^
        && ECHO pip update mkdocs-material successful. ^
        || ECHO pip update mkdocs-material failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

WHERE /Q pyenv ^
        && START "" /B /WAIT CMD /C pyenv rehash

START "" /B /WAIT CMD /C pip install --upgrade mkdocs-git-revision-date-localized-plugin ^
        && ECHO pip update mkdocs-git-revision-date-localized-plugin successful. ^
        || ECHO pip update mkdocs-git-revision-date-localized-plugin failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

WHERE /Q pyenv ^
        && START "" /B /WAIT CMD /C pyenv rehash

START "" /B /WAIT CMD /C pip install --upgrade mkdocs-minify-plugin ^
        && ECHO pip update mkdocs-minify-plugin successful. ^
        || ECHO pip update mkdocs-minify-plugin failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 4

WHERE /Q pyenv ^
        && START "" /B /WAIT CMD /C pyenv rehash

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
