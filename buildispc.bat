@echo off

REM If LLVM_INSTALL_DIR isn't set globally in your environment,
REM it can be set here_
REM set LLVM_INSTALL_DIR=c:\users\mmp\llvm-dev
REM set LLVM_VERSION=LLVM_3_2
set "LLVM_INSTALL_DIR=G:\llvm"
set LLVM_VERSION=LLVM_3_9

REM Both the LLVM binaries and python need to be in the path
set path=%LLVM_INSTALL_DIR%\bin;%PATH%;G:\cygwin64\bin

msbuild ispc.vcxproj /V:m /p:Platform=Win32 /p:Configuration=Release
