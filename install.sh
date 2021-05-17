#! /bin/sh

# edit bash_profile
# echo "$(cat bash_profile_setting.sh )" >> $HOME/.bash_profile
curl -s https://raw.githubusercontent.com/Peelz/macos-server-setup/master/bash_profile.sh -o ~/.bash_profile

# install home brew
if ! command -v brew; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install XCODE
xcode-select --install

# install cocoapod
# sudo gem install -n /usr/local/bin cocoapods

# install fastlane 
# sudo gem install fastlane -NV

# install rvm
brew install gnupg
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby

export PATH="$PATH:$HOME/.rvm/bin"

source $HOME/.rvm/scripts/rvm

if ! command -v rvm; then
    echo "rvm not installed"
    exit 1
fi

rvm install 2.7.2
rvm 2.7.2

# display ruby version
ruby -v
gem env

# install fastland and cocoapod
gem install fastlane
gem install cocoapods

# display fastlane version
if ! command -v fastlane; then
    echo "fastlane not installed"
    exit 1
fi

# display pod version
pod --version

# install node-lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install --lts

source ~/.

# install watchman
brew install watchman

# install jdk8 
brew tap adoptopenjdk/openjdk
brew install adoptopenjdk8

# installing Android dev tools
brew install ant
brew install maven
brew install gradle
brew install android-sdk
brew install android-ndk

android update sdk --no-ui

touch ~/.android/repositories.cfg

# install android sdk platform
sdkmanager "platform-tools" "platforms;android-26" "platforms;android-27"  "platforms;android-28" "platforms;android-29" "platforms;android-30"

# install avd
# sdkmanager --install "system-images;android-28;google_apis;x86_64"

# create avd emulatord
# echo "no" | avdmanager --verbose create avd --force --name "emulator-28" --package "system-images;android-28;google_apis;x86_64" --tag "google_apis" --abi "google_apis/x86_64"
