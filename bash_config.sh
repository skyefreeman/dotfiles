# bash_config #

# shell color customizations
COLOR_BLUE="\[\033[0;34m\]"
COLOR_RED="\[\033[0;31m\]"
COLOR_GREEN="\[\033[0;32m\]"
COLOR_LIGHT_RED="\[\033[1;31m\]"
COLOR_LIGHT_GREEN="\[\033[1;32m\]"
COLOR_WHITE="\[\033[1;37m\]"
COLOR_LIGHT_GRAY="\[\033[0;37m\]"

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="$COLOR_LIGHT_GREEN""Dir: $COLOR_LIGHT_RED\w "$COLOR_LIGHT_GREEN"Branch:$COLOR_LIGHT_RED\$(parse_git_branch) $COLOR_WHITE\$ $COLOR_WHITE"

#PS1="$COLOR_LIGHT_RED""$: $COLOR_LIGHT_GRAY"

# paths
export PATH=$PATH:~/scripts
export VISUAL=emacs
export EDITOR="$VISUAL"
export APPLE_ID="skyefreeman@icloud.com"

# misc aliases
alias emacs='open -a /Applications/Emacs.app $1'

alias bashedit='emacs ~/dotfiles/bash_config.sh'
alias bashload='source ~/dotfiles/bash_config.sh'
alias hammerspoonedit='emacs ~/.hammerspoon/init.lua'

alias la='ls -a'
alias ll='ls -la'

alias sleep='sudo shutdown -s now'
alias purge='rm -rf'
alias screencap='screencapture -s -c'
alias resetsim='killall \"Simulator\" && xcrun simctl erase all'
alias resetspotlight='sudo mdutil -E /'
alias ff='find . -name '
alias flatten='find . -mindepth 2 -type f -exec mv -i {} . ;'

alias bsync='browser-sync start --server --browser "Google Chrome" --files "stylesheets/*.css, *.html"'

# goto aliases
alias gotoscripts='cd ~/scripts'
alias gotoliftoffrc='cd /usr/local/Cellar/liftoff/1.6.0/defaults'
alias gotodesktop='cd ~/Desktop'
alias gotoframeworks='cd /Library/Frameworks'

# open aliases
alias openx='open *.xcodeproj'
alias openxw='open *.xcworkspace'
alias opendesktop='open ~/Desktop'
alias openliftoffrc='gotoliftoffrc && emacs liftoffrc'

# script aliases
alias podinit='podfile.sh'
alias newscript='~/Development/scripts/newscript.sh'
alias serve='bundle exec jekyll serve'

alias xc_clearDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias xc_clearArchives='rm -rf ~/Library/Developer/Xcode/Archives'
alias xc_resetSimulators='killall '"Simulator"' && xcrun simctl erase all'
alias xc_production='sudo xcode-select -s /Applications/Xcode.app/'
alias xc_beta='sudo xcode-select -s /Applications/Xcode-beta.app/'

# git aliases
alias gplo='git pull origin '
alias gpso='git push origin '
alias gpm='git pull origin master '
alias gpo='git pull origin '
alias gp='git pull '
alias gs='git status '
alias ga='git add -A '
alias gc='git add -A && git commit -am '
alias gd='git diff '
alias gb='git branch '
alias gch='git checkout '
alias gchb='git checkout -b '
alias grc='git rebase --continue'
alias gsl='git stash list'
alias glg='git lg'
alias grec='git rebase --continue'
alias gres='git rebase --skip'
alias gpr='github-pr.sh '

alias clearbranches='gb | while read branch; do gb -D $branch; done'
alias squash='git reset --soft origin/HEAD && git commit '

alias mergetool='git mergetool -t opendiff'
alias updatesubmodules='git submodule update --init --recursive'

# End #
