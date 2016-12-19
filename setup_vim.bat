
SET VIMFOLDER=%USERPROFILE%\Vim
SET VIMFILES=%VIMFOLDER%\vimfiles
SET BUNDLEFOLDER=%VIMFILES%\bundle
copy vimrc %USERPROFILE%\_vimrc
mklink /J %BUNDLEFOLDER% vim\bundle
mklink /J %VIMFILES%\ftplugin vim\ftplugin

