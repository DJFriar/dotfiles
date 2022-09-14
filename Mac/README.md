# Setting up a new macOS system

## Enable TouchID for Sudo

```zsh
sudo nano /etc/pam.d/sudo
```

Add the following line below the first line (align the items to match):

`auth sufficient pam_tid.so`

Now, the next time you use the sudo command, instead of being prompted for your password, you’ll get a dialog box asking you to authenticate with Touch ID, just as you would any other time you needed to authenticate. (And, as an extra bonus, if you choose to click the Enter Password, you’ll get prompted to use either the password or your Apple Watch, if you have one.)

Credit to Dan Moren @ [Six Colors](https://sixcolors.com/post/2020/11/quick-tip-enable-touch-id-for-sudo/)

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

## Install Powerline10k

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## OpenSSH & Git

```zsh
brew install openssh git
```

## 1Password CLI

```zsh
brew install --cask 1password/tap/1password-cli
```
