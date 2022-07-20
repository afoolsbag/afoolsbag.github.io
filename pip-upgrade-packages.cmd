@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS

WHERE /Q pip ^
        || ECHO The pip executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

START "" /B /WAIT CMD /C python -m pip install --upgrade pip ^
        && ECHO pip self upgrade successful. ^
        || ECHO pip self upgrade failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

START "" /B /WAIT CMD /C pip install --upgrade mkdocs-material ^
        && ECHO pip upgrade mkdocs-material successful. ^
        || ECHO pip upgrade mkdocs-material failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

START "" /B /WAIT CMD /C pip install --upgrade mkdocs-git-revision-date-localized-plugin ^
        && ECHO pip upgrade mkdocs-git-revision-date-localized-plugin successful. ^
        || ECHO pip upgrade mkdocs-git-revision-date-localized-plugin failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 4

START "" /B /WAIT CMD /C pip install --upgrade mkdocs-minify-plugin ^
        && ECHO pip upgrade mkdocs-minify-plugin successful. ^
        || ECHO pip upgrade mkdocs-minify-plugin failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 5

CALL :timeout10_if_double_click
EXIT /B 0

:pause_if_double_click
        FOR /F "tokens=*" %%G IN ('PowerShell -NoProfile -Command "$ppid=$pid; while($i++ -lt 3 -and ($ppid=(Get-CimInstance Win32_Process -Filter ('ProcessID='+$ppid)).ParentProcessId)) {}; (Get-Process -Id $ppid).Name"') DO SET shell=%%G
        IF "%shell%"=="explorer" (
                ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                        && PAUSE
        )
        EXIT /B 0
:timeout10_if_double_click
        FOR /F "tokens=*" %%G IN ('PowerShell -NoProfile -Command "$ppid=$pid; while($i++ -lt 3 -and ($ppid=(Get-CimInstance Win32_Process -Filter ('ProcessID='+$ppid)).ParentProcessId)) {}; (Get-Process -Id $ppid).Name"') DO SET shell=%%G
        IF "%shell%"=="explorer" (
                ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                        && TIMEOUT 10
        )
        EXIT /B 0
