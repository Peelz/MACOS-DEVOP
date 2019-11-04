export ANDROID_HOME=/usr/local/share/android-sdk
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

export PATH=/usr/local/opt/node@10/bin:$PATH

# check appium is running
if [ ! -n "$(lsof -n -i:4723 | grep LISTEN)" ]; then 
    appium &
fi
