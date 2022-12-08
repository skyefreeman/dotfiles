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

# paths
export PATH=$PATH:~/scripts:~/.roswell/bin:
export VISUAL=emacs
export EDITOR="$VISUAL"
export APPLE_ID="skyefreeman@icloud.com"
export GPG_TTY=$(tty)

# misc aliases
#alias emacs='open -a /Applications/Emacs.app $1'

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
alias flatten='find . -mindepth 2 -type f -exec mv -i {} . '"'"';'"'"''

alias bsync='browser-sync start --server --browser "Google Chrome" --files "stylesheets/*.css, *.html"'

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

# Gryffindor + SwiftStarterKits
alias gryffindor='ssh skye@45.79.145.155'

alias ssk_output='journalctl --user -u swiftstarterkits.com.service -e | grep -v "uptimerobot.com"'
alias ssk_output_follow='journalctl --user -u swiftstarterkits.com.service -fe | grep -v "uptimerobot.com"'
alias ssk_status='systemctl --user status swiftstarterkits.com.service'
alias ssk_restart='systemctl --user restart swiftstarterkits.com.service'
alias ssk_enable='systemctl --user daemon-reload && systemctl --user enable swiftstarterkits.com.service'

# End #
