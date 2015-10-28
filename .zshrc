export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export ANDROID_HOME=/Users/vito/Android/android-sdk-macosx
export GRADLE_HOME=/Users/vito/Projects/gradle-1.9/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$GRADLE_HOME
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting



# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias speed="curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
alias hiddenON="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hiddenOFF="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"

alias mkscreenshot="adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > preview.jpg"
alias listpackages="adb shell pm list packages"
alias alarms="adb shell dumpsys alarm > /tmp/dump.txt |grep -A 3 $1"
alias adbip="adb shell ip -f inet addr show wlan0"
alias logcat="adb logcat | grep \`adb shell ps | grep com.vitaminlabs.visualization | cut -c10-15\`"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

launchctl setenv ANDROID_HOME $ANDROID_HOME
# export MANPATH="/usr/local/man:$MANPATH"


#export EDITOR='subl -w'
export EDITOR='vim'
# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
