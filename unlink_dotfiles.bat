@echo off
setlocal

REM vim
call :DeleteFileIfSymlink %USERPROFILE%"\.vimrc"

REM gvim
call :DeleteFileIfSymlink %USERPROFILE%"\.gvimrc"

REM .config
call :DeleteFileIfSymlink %USERPROFILE%"\.config"

endlocal
exit /b

REM delete file if symlink.
REM arg1: delete file path.
:DeleteFileIfSymlink
setlocal

IF NOT EXIST "%1" (
    echo "does not exist %1"

    exit /b
)

REM check target is symlink
fsutil reparsepoint query "%1" | find "Symbolic Link" >nul
IF %errorlevel% == 0  (
    del "%1"
    echo "remove %1"
) ELSE (
    echo "not symlink %1"
)

endlocal
exit /b

REM delete directory if symlink.
REM arg1: delete directory path.
:DeleteDirectoryIfSymlink
setlocal

IF NOT EXIST "%1" (
    echo "does not exist %1"

    exit /b
)

REM check target is symlink
fsutil reparsepoint query "%1" | find "Symbolic Link" >nul
IF %errorlevel% == 0  (
    rmdir "%1"
    echo "remove %1"
) ELSE (
    echo "not symlink %1"
)

endlocal
exit /b
