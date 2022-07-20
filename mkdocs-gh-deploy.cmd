@ECHO OFF
CHCP 65001 > NUL
SETLOCAL ENABLEEXTENSIONS
SET script_directory=%~dp0
SET site_directory=%TMP%\mkdocs~%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%

WHERE /Q mkdocs ^
        || ECHO The mkdocs executable not found. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 1

CD "%script_directory%" ^
        || ECHO Change directory to project directory failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 2

START "" /B /WAIT CMD /C mkdocs gh-deploy --remote-branch "www" --strict --site-dir "%site_directory%" ^
        && ECHO MkDocs gh-deploy successful. ^
        || ECHO MkDocs gh-deploy failed. ^
        && CALL :pause_if_double_click ^
        && EXIT /B 3

CALL :pause_if_double_click
EXIT /B 0

:pause_if_double_click
        FOR /F "tokens=*" %%G IN ('PowerShell -NoProfile -Command "$ppid=$pid; while($i++ -lt 3 -and ($ppid=(Get-CimInstance Win32_Process -Filter ('ProcessID='+$ppid)).ParentProcessId)) {}; (Get-Process -Id $ppid).Name"') DO SET shell=%%G
        IF "%shell%"=="explorer" (
                ECHO %CMDCMDLINE% | FINDSTR /I /C:" /C " > NUL ^
                        && PAUSE
        )
        EXIT /B 0
