for file in ~/.{path,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Enable zoxide configuration
eval "$(zoxide init zsh)"
alias j="z"
# End of zoxide configuration

# Start of nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# End of nvm configuration

# Start of Docker CLI completions
fpath=(/Users/mbreckon/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
