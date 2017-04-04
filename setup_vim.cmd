@echo off
SET VIM_DIR=%USERPROFILE%/vimfiles

rem "Copy vimrc"
copy vimrc %USERPROFILE%\_vimrc
rem "Copy vimrc.bundles"
copy vimrc.bundles %VIM_DIR%