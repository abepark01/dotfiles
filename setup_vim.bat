
SET VIMFOLDER=%USERPROFILE%\Vim
SET VIMFILES=%VIMFOLDER%\vimfiles
SET BUNDLEFOLDER=%VIMFILES%\bundle
mklink /J %VIMFOLDER%\_vimrc vimrc
mklink /J %BUNDLEFOLDER% vim\bundle
mklink /J %VIMFILES%\ftplugin vim\ftplugin