export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

export PATH=/usr/local/opt/node@10/bin:$PATH

# check appium is running
if [ ! -n "$(lsof -n -i:1 | grep LISTEN)" ]; then 
    appium &
fi
