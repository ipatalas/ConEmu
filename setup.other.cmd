:: Enhance Path
set PATH=%ConEmuDir%\bin;%PATH%

:: Add aliases
doskey /macrofile="%ConEmuDir%\config\aliases"

:: Set home path
if not defined HOME set HOME=%USERPROFILE%
