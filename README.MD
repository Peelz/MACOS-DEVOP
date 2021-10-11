# All command executed

## edit bash_profile

```sh
cp bash_profile_setting.sh $HOME/.bash_profile

source $HOME/.bash_profile
```

## install home brew

```sh
if ! command -v brew; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
```

## install XCODE

```sh
xcode-select --install
```

## install cocoapod

```
sudo gem install -n /usr/local/bin cocoapods
```

## install jdk8

```
brew cask install adoptopenjdk/openjdk/adoptopenjdk8
```

## allow all request

```
sed -i "" "s~httpListenAddress=127.0.0.1~httpListenAddress=0.0.0.0~g" /usr/local/opt/jenkins-lts/homebrew.mxcl.jenkins-lts.plist
```

## start jenkins-lts

```
brew services restart jenkins-lts
```

# Open Browser for jenkins setting up

```
open "http://localhost:8080"
```
