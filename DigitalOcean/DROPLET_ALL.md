# Setting up a new DigitalOcean Droplet

## Install ZSH

```sh
apt update
apt install zsh
chsh -s /usr/bin/zsh [username]
```

## SSH Configuration

Install the pam-ssh-agent-auth by running `sudo apt install libpam-ssh-agent-auth`.

Further instructions to come...

## Install Oh My Zsh

```zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install Powerline10k

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Then modify the `.zshrc` file by setting the theme to:

```sh
ZSH_THEME = "powerlevel10k/powerlevel10k"
```
