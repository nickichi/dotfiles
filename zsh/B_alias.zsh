# zsh alias file

# alias
# vim to nvim
alias vim="nvim"
# reload
alias reload="source ~/.zshrc"
# ls
alias l="ls -al"
alias ll="ls -l"
alias la="ls -a"
# for easy cd
alias -g ...="../../"
alias -g ....="../../../"
alias -g .....="../../../../"
# for git
alias ga="git add"
alias gc="git commit"
alias gst="git status"
alias gp="git push"
alias gco="git checkout"
# suffix
alias -s py="python"


# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}
zle -N _fda fda
bindkey '^j' _fda

# fvim [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fvim() {
  IFS='
'
  local declare files=($(fzf-tmux --query="$1" --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-nvim} "${files[@]}"
  unset IFS
}

# select-history
function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history
