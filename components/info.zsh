# Set the Zsh prompt to display username, hostname, and current directory
PS1="%n@%m:%~$ "

# Define aliases for common commands
alias ll='ls -al'
alias cls='clear'
alias ..='cd ..'

# Set environment variables
export EDITOR='vim'
export PATH="$PATH:/usr/local/bin"

# Enable syntax highlighting for Zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable auto-completion for commands and file paths
autoload -U compinit
compinit

# Use a custom theme for Oh-My-Zsh if installed
if [[ -d $HOME/.oh-my-zsh ]]; then
    ZSH_THEME="agnoster"  
fi

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

