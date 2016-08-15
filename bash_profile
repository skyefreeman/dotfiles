#bash_profile#
##############

#Add scripts folder to
export PATH=$PATH:~/Development/scripts

#Always open emacs in window
alias emacs='open -a /Applications/Emacs.app $1'

#Shortcut to edit ~/.bash_profile
alias bashedit='emacs ~/.bash_profile'

#Shortcut to reload ~/.bash_profile
alias bashload='source ~/.bash_profile'

#ls -a
alias la='ls -a'

#ls -l
alias ll='ls -l'

#Put computer to sleep
alias sleep='sudo shutdown -s now'

#Opens xcode project in current dir
alias openx='open *.xcodeproj'
alias openxw='open *.xcworkspace'

#rm -rf
alias purge='rm -rf'

#Screenshot and save to desktop
alias screencap='screencapture -s ~/Desktop/temp.png'

############GOTO SHORTCUTS#############
alias gotowebsite='cd ~/Development/WebDevelopment/skyefreeman.github.io'
alias gotoscripts='cd ~/Development/scripts'
alias gotoliftoffrc='cd /usr/local/Cellar/liftoff/1.6.0/defaults'
alias gotopajama='cd ~/Development/Games/Pajama_Penguins'
alias gotojung='cd ~/Development/iOSDevelopment/Junganew'
alias gotodesktop='cd ~/Desktop'
alias gotooutvoo='cd ~/Development/iOSDevelopment/OutVoo'
alias gotoframeworks='cd /Library/Frameworks'
alias gototaper='cd ~/Development/iOSDevelopment/Taper-iPhone-App'
alias gotocognition='cd ~/Development/iOSDevelopment/Cognition'
alias gotosonhouse='cd ~/Development/iOSDevelopment/SonHouse'
alias gotografiti='cd ~/Development/iOSDevelopment/Grafiti/mobiledev'
alias gotoecho='cd ~/Development/iOSDevelopment/echo-ios'

##############OPEN SHORTCUTS###########
alias opendesktop='open ~/Desktop'
alias openliftoffrc='gotoliftoffrc && emacs liftoffrc'
alias openpajama='gotopajama && openx'
alias opentaper='cd ~/Development/iOSDevelopment/Taper-iPhone-App && openxw'
alias opencognition='cd ~/Development/iOSDevelopment/Cognition && openxw'
alias opensonhouse='cd ~/Development/iOSDevelopment/SonHouse && openxw'
alias openiosiconsets='cd ~/Art/iOS_Icon_Sets && open .'
alias openoutvoo='gotooutvoo && openxw'
alias openjung='gotojung && openxw'
alias opengrafiti='gotografiti && openxw'
alias openecho='gotoecho && openxw'

##############Project Flows############
alias echoflow='openecho && webflow echo'
alias grafitiflow='opengrafiti && webflow grafiti'
alias outvooflow='openoutvoo && webflow outvoo'
##############SCRIPT SHORTCUTS#########
alias podinit='podfile.sh'
alias smokingappflow='osascript ~/Development/scripts/smokingappflow.scpt'
alias newscript='~/Development/scripts/newscript.sh'
alias serve='bundle exec jekyll serve'
alias devmodeon='defaults write ~/Library/Preferences/ByHost/com.apple.notificationcenterui.A7CBDEFD-A69F-57AE-9F7B-496D40E34762.plist doNotDisturb 1'
alias devmodeoff='defaults write ~/Library/Preferences/ByHost/com.apple.notificationcenterui.A7CBDEFD-A69F-57AE-9F7B-496D40E34762.plist doNotDisturb 0'
alias xcodeclean='rm -rf ~/Library/Developer/Xcode/DerivedData'

#################GIT###################
#######################################
#git pull origin master
alias gitpullm='git pull origin master'

#git push origin master
alias gitpushm='git push origin master'

#git status
alias gits='git status'

#git add
alias gita='git add -A'

#git commit
alias gitc='gita && git commit -am'

###########Project Specific############
alias gitpulld='git pull origin dev'
alias gitpushd='git push origin dev'

#######################################

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/SkyeBook/Downloads/cocos2d-js-v3.2/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

##
# Your previous /Users/SkyeBook/.bash_profile file was backed up as /Users/SkyeBook/.bash_profile.macports-saved_2015-08-25_at_21:12:51
##

# MacPorts Installer addition on 2015-08-25_at_21:12:51: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/SkyeBook/.bash_profile file was backed up as /Users/SkyeBook/.bash_profile.macports-saved_2015-08-25_at_21:14:15
##

# MacPorts Installer addition on 2015-08-25_at_21:14:15: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
