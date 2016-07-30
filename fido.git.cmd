:: Prepare for msysgit
:: I do not even know, copypasted from their .bat
set PLINK_PROTOCOL=ssh
if not defined TERM set TERM=cygwin

:: Check if msysgit is installed
if exist "%ProgramFiles%\Git" (
    set "GIT_INSTALL_ROOT=%ProgramFiles%\Git"
) else if exist "%ProgramFiles(x86)%\Git" (
    set "GIT_INSTALL_ROOT=%ProgramFiles(x86)%\Git"
)


:: Add git to the path
if defined GIT_INSTALL_ROOT (
    set "PATH=%GIT_INSTALL_ROOT%\bin;%GIT_INSTALL_ROOT%\usr\bin;%PATH%"
    :: define SVN_SSH so we can use git svn with ssh svn repositories
    if not defined SVN_SSH set "SVN_SSH=%GIT_INSTALL_ROOT:\=\\%\\bin\\ssh.exe"
)
