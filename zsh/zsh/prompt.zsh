autoload colors && colors

anchor() {
  echo "◦"
}

user() {
  echo "%{$fg_bold[yellow]%}%n%{$reset_color%}"
}

at() {
  echo "%{$fg_bold[yellow]%}@%{$reset_color%}"
}

machine() {
  echo "%{$fg_bold[cyan]%}%m%{$reset_color%}"
}

in() {
  echo "%{$fg_bold[white]%}:%{$reset_color%}"
}

directory_name(){
  echo "%{$fg_no_bold[cyan]%}%~%\/%{$reset_color%}"
}

git_branch(){
  branch_name=$(git symbolic-ref HEAD 2>/dev/null | sed 's:refs/heads/::' )
  if [[ $branch_name == "" ]]
  then
    echo ""
  else
    echo "%{$fg_no_bold[red]%}($branch_name)%{$reset_color%}"
  fi
}

git_dirty() {
  st=$(git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    rawpos=$(git status -sb )
    if [[ $rawpos =~ '/.+\[([a-z]+)\ ([0-9]+).*' ]]
    then
      pos=$(echo $match | sed 's/ //' | sed 's/ahead/+/' | sed 's/behind/-/')
    else
      pos=""
    fi

    offset="%{$fg_bold[green]%}$pos%{$reset_color%}"

    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      echo "$offset"
    else
      echo "$offset%{$fg_bold[yellow]%}•%{$reset_color%}"
    fi
  fi
}

# export PROMPT=$'\n$(user)$(at)$(machine)$(in)$(directory_name)$(git_branch)$(git_dirty)\n$(anchor) '
export PROMPT=$'\n$(directory_name)$(git_branch)$(git_dirty)\n$(anchor) '

precmd() {
  title "zsh" "%m" "%55<...<%~"
}

uptime
flol
