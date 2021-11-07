#/bin/sh

if [[ ! $(which brew) ]]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else if [[ "$OSTYPE" == "linux-gnu" ]]; then
        sudo apt-get install build-essential procps curl file git
    fi
fi

# Homebrew setup
echo "following program will be installed via brew"
cat $HOME/dotfiles/Brewfile | cut f2 -d ' ' | tr -d '\"' 
read -r -n 1 -p "[y/n]" ans
if [[ "$ans" =~ ^([yY])$ ]]; then
    brew update
    brew tap homebrew/bundle
    brew bundle --file=$HOME/dotfiles/Brewfile
    brew cleanup
    brew cask cleanup
fi


# Install dot files
PACKS=$(ls -d */)
echo "following dotfiles will be installed"
echo ${PACKS[@]}

# Setup Zsh

# -- deault shell zsh --------------------------------------------------------------------
chsh -s $(which zsh)

# -- oh my zsh ---------------------------------------------------------------------------

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

source $HOME/.zshrc
# -- Vim ---------------------------------------------------------------------------------

# -- Vim Plug ----------------------------------------------------------------------------

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# -- Neo Vim plugin ----------------------------------------------------------------------

nvim +PlugInstall +qall


# -- tmux setup --------------------------------------------------------------------------

# if [[ ! -d "$HOME/.tmux" ]]; then
#     git clone https://github.com/gpakosz/.tmux.git $HOME/
#     ln -s -f $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
# fi

