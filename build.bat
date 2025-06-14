@echo off
REM Build script for Hello GUI Fyne application
REM This script sets up the correct compiler environment and builds the application

echo Building Hello GUI application...

REM Set the PATH to include MinGW from MSYS2
set PATH=C:\apps\msys64\mingw64\bin;%PATH%

REM Set the C compiler to use MinGW GCC
set CC=gcc

REM Build the application
go build -ldflags "-H windowsgui" -o hello-gui-go.exe main.go

if %ERRORLEVEL% EQU 0 (
    echo Build successful!  Created hello-gui-go.exe.
) else (
    echo Build failed!
)
