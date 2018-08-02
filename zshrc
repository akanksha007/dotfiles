export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler rails zeus brew)
export PATH="/usr/local/bin:$PATH"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
