#! /bin/sh

# edit bash_profile
# echo "$(cat bash_profile_setting.sh )" >> $HOME/.bash_profile
cp bash_profile_setting.sh $HOME/.bash_profile

source $HOME/.bash_profile

# install home brew
if ! command -v brew; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install XCODE
xcode-select --install

# install cocoapod
sudo gem install -n /usr/local/bin cocoapods

# install node-lts
brew install node@10
brew install watchman

# install npm global
# - appium
# - appium-doctor
# - react-native-cli
# - react-native-rename
npm install -g appium appium-doctor @react-native-community/cli react-native-rename firebase-tools

# install jdk8 
brew cask install adoptopenjdk/openjdk/adoptopenjdk8

# install jenkins 
brew install jenkins-lts

# allow all request
sed -i "" "s~httpListenAddress=127.0.0.1~httpListenAddress=0.0.0.0~g" /usr/local/opt/jenkins-lts/homebrew.mxcl.jenkins-lts.plist

# start jenkins-lts 
brew services restart jenkins-lts

# installing Android dev tools
brew install ant
brew install maven
brew install gradle
brew cask install android-sdk

touch ~/.android/repositories.cfg

# install android sdk platform
sdkmanager "platform-tools" "platforms;android-26" "platforms;android-27" "platforms;android-28"

# install avd
sdkmanager --install "system-images;android-28;google_apis;x86_64"

# create avd emulatord
echo "no" | avdmanager --verbose create avd --force --name "emulator-28" --package "system-images;android-28;google_apis;x86_64" --tag "google_apis" --abi "google_apis/x86_64"

# Open Browser for jenkins setting up
echo "##### Jenkins initial password ######"
printf "\n\x1b[32m$(cat $HOME/.jenkins/secrets/initialAdminPassword)\x1b[0m\n\n"
open "http://localhost:8080"
