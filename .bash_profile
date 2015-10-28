[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export ANDROID_HOME=/Users/vito/Android/android-sdk-macos
export GRADLE_HOME=/Users/vito/Projects/gradle-1.9/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$GRADLE_HOME
launchctl setenv ANDROID_HOME $ANDROID_HOME

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
