:: Pick right version of clink
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    set arch=86
) else (
    set arch=64
)

:: Change the prompt style
:: Mmm tasty lamb
prompt {admin}{user}{cwd}{git}{npm}$S$E[1;30;40m$t$_$E[1;30;40m{lamb}$S$E[0m

:: Run clink
"%ConEmuDir%\clink\clink_x%arch%.exe" inject --quiet --profile "%ConEmuDir%\config"
