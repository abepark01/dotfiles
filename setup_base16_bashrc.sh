rm -fr ~/.config/base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

if [ -e $HOME/.bashrc ]
then
  echo -e 'BASE16_SHELL=$HOME/.config/base16-shell/' >> ~/.bashrc
  echo -e '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> ~/.bashrc
  echo -e 'base16_oceanicnext' >> ~/.bashrc
elif [ -e $HOME/.bash_profile ]
then
  echo -e 'BASE16_SHELL=$HOME/.config/base16-shell/' >> ~/.bash_profile
  echo -e '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> ~/.bash_profile
  echo -e 'base16_oceanicnext' >> ~/.bash_profile
fi
