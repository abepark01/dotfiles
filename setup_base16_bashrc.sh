rm -fr ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

THEME=base16_tomorrow-night
if [ -e $HOME/.bash_profile ]
then
  echo 'BASE16_SHELL=$HOME/.config/base16-shell/' >> ~/.bash_profile
  echo  '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> ~/.bash_profile
  echo  $THEME >> ~/.bash_profile
elif [ -e $HOME/.bashrc ]
then
  echo  'BASE16_SHELL=$HOME/.config/base16-shell/' >> ~/.bashrc
  echo  '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> ~/.bashrc
  echo  $THEME >> ~/.bashrc
elif [ -e $HOME/.zshrc ]
then
  echo  'BASE16_SHELL=$HOME/.config/base16-shell/' >> ~/.zshrc
  echo  '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> ~/.zshrc
  echo  $THEME >> ~/.zshrc
fi
