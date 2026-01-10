@echo off
setlocal

REM vim
call :CreateFileSymlink %~dp0"\vim\.vimrc" %USERPROFILE%"\.vimrc"
call :CreateFileSymlink %~dp0"\vim\.gvimrc" %USERPROFILE%"\.gvimrc"

REM .config
call :CreateFileSymlink %~dp0"\.config" %USERPROFILE%"\.config"

endlocal
exit /b

REM create file symlink.
REM arg1: from file.
REM arg2: to symlink path.
:CreateFileSymlink
setlocal

IF EXIST "%2" (
    echo "already exist %2"

    exit /b
)

mklink "%2" "%1"

endlocal
exit /b

REM create directory symlink.
REM arg1: from directory.
REM arg2: to symlink path.
:CreateDirectorySymlink
setlocal

IF EXIST "%2" (
    echo "already exist %2"

    exit /b
)

mklink /D "%2" "%1"

endlocal
exit /b
