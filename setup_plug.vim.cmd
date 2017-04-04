@echo off
rem setup vim-plug for windows
SET CURL_PATH="C:/Program Files/Git/mingw64/bin/curl"
%CURL_PATH% -fLo %USERPROFILE%/vimfiles/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
