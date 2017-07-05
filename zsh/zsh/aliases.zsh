# ZSH
alias reload!='. ~/.zshrc'

# GIT
alias ga="git add"
alias gc="git commit"
alias gph='git push'
alias gpl='git pull --rebase'
alias gd='git diff --compaction-heuristic'
alias gco='git checkout'
alias gs='git status -sb'
alias gcp='git cherry-pick'
alias gcl='git clone'
alias gg='git grep'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias glc="git log --graph --color --date=relative --stat"

# BUNDLER
alias b='bundle'
alias be='b exec'
alias bea='be autotest -c'
alias brake='bin/rake'
alias brspec='bin/rspec'
alias brails='bin/rails'

# ATOM
alias a='atom .'

# CORDOVA
alias cb='cordova build'
alias cr='cordova run'

# MAC OS X
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias out='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# LINES OF CODE
alias lr='find . -name "*.rb" -print | xargs wc -l | tail -n 1'

# AWESOME
alias flol='fortune | lolcat'
