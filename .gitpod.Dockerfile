FROM gitpod/workspace-full:latest

RUN brew install zsh antigen

RUN <<EOR
cat <<- ZSHRC > /home/gitpod/.zshrc
# antigen path when using Homebrew:
source $(brew --prefix)/share/antigen/antigen.zsh

# if you installed antigen using curl:
# source /path-to-antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# load plugins
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle aws
antigen bundle terraform
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle djui/alias-tips

# Load the theme.
# my personal theme
# antigen theme dzenzes/danielzenzes.zsh-theme --branch=main
# something more popular:
antigen theme robbyrussell

# more configuration

# Tell Antigen that you're done
antigen apply
EOR