@echo off
REM -----------------------------------------------------------------
REM Name ..............: QT-GenTC.cmd
REM Description .......: Tool Chain Generation Script
REM Script Author .....: Greg Beam, KI7MT
REM Script Copyright ..: Copyright (c) 2018, Greg Beam
REM Script License ....: Apache 2.0
REM -----------------------------------------------------------------

setlocal

ECHO ------------------------------
ECHO  Generate Tool Chain Files
ECHO ------------------------------
ECHO.

:: Hamlib3 Dirs
set hamlib_base=%JTSDK_HOME%\tools\hamlib
set "hamlib_base_f=%hamlib_base:\=/%"
goto GEN_QT55

:GEN_QT55
REM ----------------------------------------------------------------------------
REM Tool Chain File for Qt 5.5 using GCC 4.9.2
REM ----------------------------------------------------------------------------
echo  Version          : %version%
echo  TC File          : QT55.cmake
echo  File Path        : %JTSDK_HOME%\tools\tc-files\QT55.cmake

set QTD55=%JTSDK_HOME%\tools\qt\5.5\mingw492_32\bin
set GCCD55=%JTSDK_HOME%\tools\qt\Tools\mingw492_32\bin
set "QTD55_F=%QTD55:\=/%"
set "GCCD55_F=%GCCD55:\=/%"

:GEN_QT55
>%JTSDK_HOME%\tools\tc-files\QT55.cmake (
echo # This file is auto-generated by : %~n0.cmd version %version%
echo # Tool Chain File for Qt 5.5 using GCC 492_32
echo.
echo # System Type and Based Paths
echo ^SET^(CMAKE_SYSTEM_NAME Windows^)
echo ^SET^(QTDIR %QTD55_F%^)
echo ^SET^(GCCD %GCCD55_F%^)
echo.
echo # AsciiDoctor
echo ^SET^(ADOCD %ruby_dir_f%^)
echo.
echo # FFTW
echo ^SET^(FFTWD %fftw3f_dir_f%^)
echo.
echo # Hamlib
echo ^SET^(HLBIN %hamlib_base_f%/qt/5.5/bin^)
echo ^SET^(HLINC %hamlib_base_f%/qt/5.5/include^)
echo ^SET^(HLLIB %hamlib_base_f%/qt/5.5/lib^)
echo.
echo # Subversion
echo ^SET^(SVND %svn_dir_f%^)
echo.
echo # Cmake Consolidated Variables
echo ^SET^(CMAKE_PREFIX_PATH ^${GCCD} ^${QTDIR} ^${ADOCD} ^${FFTWD} ^${SVND} ^${HLBIN} ^${HLINC} ^${HLLIB}^)
echo ^SET^(CMAKE_FIND_ROOT_PATH ^${TOOLSROOT}^)
echo ^SET^(CMAKE_FIND_ROOT_PATH_PROGRAM NEVER^)
echo ^SET^(CMAKE_FIND_ROOT_PATH_LIBRARY BOTH^)
echo ^SET^(CMAKE_FIND_ROOT_PATH_INCLUDE BOTH^)
echo.
echo # END Cmake Tool Chain File
)
goto GEN_QT57

:GEN_QT57
REM ----------------------------------------------------------------------------
REM Tool Chain File for Qt 5.7 using GCC 5.3.0
REM ----------------------------------------------------------------------------
echo.
echo  Version          : %version%
echo  TC File          : QT57.cmake
echo  File Path        : %JTSDK_HOME%\tools\tc-files\QT57.cmake

set QTD57=%JTSDK_HOME%\tools\qt\5.7\mingw53_32\bin
set GCCD57=%JTSDK_HOME%\tools\qt\Tools\mingw530_32\bin
set "QTD57_F=%QTD55:\=/%"
set "GCCD57_F=%GCCD55:\=/%"

>%JTSDK_HOME%\tools\tc-files\QT57.cmake (
echo # This file is auto-generated by : %~n0.cmd version %version%
echo # Tool Chain File for Qt 5.7 using GCC 530_32
echo.
echo # System Type and Based Paths
echo ^SET^(CMAKE_SYSTEM_NAME Windows^)
echo ^SET^(QTDIR %QTD57_F%^)
echo ^SET^(GCCD %GCCD57_F%^)
echo.
echo # AsciiDoctor
echo ^SET^(ADOCD %ruby_dir_f%^)
echo.
echo # FFTW
echo ^SET^(FFTWD %fftw3f_dir_f%^)
echo.
echo # Hamlib
echo ^SET^(HLBIN %hamlib_base_f%/qt/5.7/bin^)
echo ^SET^(HLINC %hamlib_base_f%/qt/5.7/include^)
echo ^SET^(HLLIB %hamlib_base_f%/qt/5.7/lib^)
echo.
echo # Subversion
echo ^SET^(SVND %svn_dir_f%^)
echo.
echo # Cmake Consolidated Variables
echo ^SET^(CMAKE_PREFIX_PATH ^${GCCD} ^${QTDIR} ^${ADOCD} ^${FFTWD} ^${SVND} ^${HLBIN} ^${HLINC} ^${HLLIB}^)
echo ^SET^(CMAKE_FIND_ROOT_PATH ^${TOOLSROOT}^)
echo ^SET^(CMAKE_FIND_ROOT_PATH_PROGRAM NEVER^)
echo ^SET^(CMAKE_FIND_ROOT_PATH_LIBRARY BOTH^)
echo ^SET^(CMAKE_FIND_ROOT_PATH_INCLUDE BOTH^)
echo.
echo # END Cmake Tool Chain File
)
goto EOF

:EOF
echo.
endlocal

exit /b 0