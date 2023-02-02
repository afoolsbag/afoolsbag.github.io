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
        START "" /B /WAIT CMD /C scoop install python ^
                && ECHO Scoop install python successful. ^
                || ECHO Scoop install python failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 2

        START "" /B /WAIT CMD /C pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
                && ECHO pip config set global.index-url successful. ^
                || ECHO pip config set global.index-url failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 3
)

:: Node.js
WHERE /Q node
IF %ERRORLEVEL% NEQ 0 (
        START "" /B /WAIT CMD /C scoop install nodejs ^
                && ECHO Scoop install nodejs successful. ^
                || ECHO Scoop install nodejs failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 4
        
        START "" /B /WAIT CMD /C npm config set registry https://registry.npm.taobao.org/ ^
                && ECHO npm config set registry successful. ^
                || ECHO npm config set registry failed. ^
                && CALL :pause_if_double_click ^
                && EXIT /B 5
)

ECHO Environment initialize successful.
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
