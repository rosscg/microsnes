@echo off
setlocal enableextensions
set TERM=
cd /d "%~dp0cygwin64\bin" && .\bash --login -i | mintty -h always /bin/bash -l -e "%~dp0CopyRoms.command"
