@ECHO OFF
CHCP 65001
SETLOCAL ENABLEEXTENSIONS

WHERE /Q pip ^
        || ECHO The pip executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

pip install --upgrade mkdocs-material ^
        && ECHO pip update mkdocs-material succeed. ^
        || ECHO pip update mkdocs-material failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

pip install --upgrade mkdocs-git-revision-date-localized-plugin ^
        && ECHO pip update mkdocs-git-revision-date-localized-plugin succeed. ^
        || ECHO pip update mkdocs-git-revision-date-localized-plugin failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

pip install --upgrade mkdocs-minify-plugin ^
        && ECHO pip update mkdocs-minify-plugin succeed. ^
        || ECHO pip update mkdocs-minify-plugin failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 4

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% 1>NUL 2>NUL ^
                && PAUSE
        EXIT /B 0
