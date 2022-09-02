# Setting up a new macOS system

## Set custom defaults

See macos.sh

## OhMyZsh

### Install OhMyZsh

```zsh Install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Setup the .zshrc file

Copy the .zshrc file to ~

## Install NVM

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## Install HomeBrew

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Nano

```zsh
brew install nano
```

```zsh
echo 'include "/opt/homebrew/Cellar/nano/*/share/nano/*.nanorc"' >> ~/.nanorc
```
