for file in ~/.{path,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

eval "$(zoxide init zsh)"
alias j="z"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
