

:: BETTER APE LAUNCHER BY FANATIC ::


@ECHO OFF


::::::::::: CHANGE THIS TO WHEREVER YOUR BLACK OPS III ROOT IS :::::::::::

SET BO3Root="C:\SteamLibrary\steamapps\common\Call of Duty Black Ops III"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


SET CacheFile=%BO3Root%"\AssetWorks\apegdt.cache"

SET ApeEXEName="asseteditor_modtools.exe"
SET ApeEXE="%BO3Root%\bin\%ApeEXEName%"

TASKLIST | FINDSTR /I "%ApeEXEName%"
IF ERRORLEVEL 0 GOTO :KillTheMonkey
IF ERRORLEVEL 1 GOTO :ClearApeCache
GOTO :EOF

:KillTheMonkey
echo.
echo Killing the Monkey
echo.
wmic process where name=%ApeEXEName% call terminate
TIMEOUT /T 2
if exist %CacheFile% GOTO :ClearApeCache
GOTO :LaunchApe

:ClearApeCache
echo.
echo Clearing Cache
if exist %CacheFile% del %CacheFile%
TIMEOUT /T 2
GOTO :LaunchApe

:LaunchApe
start "" "%ApeEXE%"
GOTO :EOF
