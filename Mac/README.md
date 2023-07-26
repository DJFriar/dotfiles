# Setting up a new macOS system

## Install HomeBrew

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Upgrade to Nano 7 via Brew

```zsh
brew install nano
```

```zsh
echo 'include "/opt/homebrew/Cellar/nano/*/share/nano/*.nanorc"' >> ~/.nanorc
```

Copy over the .nanorc file in this repo.

## Install OpenSSH & Git via Brew

```zsh
brew install openssh git
```

## Install & Configure OhMyZsh

### Install OhMyZsh

```zsh Install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install ZSH-NVM plugin for OhMyZsh

```zsh
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
```

## Install Powerline10k

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Then run `p10k configure` in Terminal.

### Setup the .zshrc file

Copy the .zshrc file to ~

## Install 1Password CLI

```zsh
brew install --cask 1password/tap/1password-cli
```

## Enable TouchID for Sudo

```zsh
sudo nano /etc/pam.d/sudo
```

Add the following line below the first line (align the items to match):

`auth sufficient pam_tid.so`

Now, the next time you use the sudo command, instead of being prompted for your password, you’ll get a dialog box asking you to authenticate with Touch ID, just as you would any other time you needed to authenticate. (And, as an extra bonus, if you choose to click the Enter Password, you’ll get prompted to use either the password or your Apple Watch, if you have one.)

Credit to Dan Moren @ [Six Colors](https://sixcolors.com/post/2020/11/quick-tip-enable-touch-id-for-sudo/)

## Install NVM

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```


## Set custom defaults for macOS

See macos.sh

## Configure Espanso

The Espanso config is included in this repo under Espanso.

Make sure that there is no espanso folder inside ~/Library/Application Support, then run the following command:

```zsh
ln -s ~/Dev/dotfiles/Espanso ~/Library/Application\ Support/espanso
```
