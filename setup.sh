cp ~/dotfiles/{.zshrc,.gitconfig} ~

# oh-my-zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# ack
sudo wget -O /usr/local/bin/ack http://beyondgrep.com/ack-2.14-single-file
sudo chmod 0755 /usr/local/bin/ack

# z
sudo wget -O /usr/local/bin/z.sh https://raw.github.com/rupa/z/master/z.sh
