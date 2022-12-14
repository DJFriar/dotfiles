# Webserver Droplet Settings

## Customize Powerlevel10k

Using `nano ~/.p10k.zsh`, edit the following settings:

- Enable prompt_char on Line 2 of Left Prompt
- Enable public_ip on Line 2 of Right Prompt

## Install NVM

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## Install ZSH-NVM plugin

```zsh
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
```

## Install NodeJS

```zsh
nvm install --lts
```

## Generate an SSH Key

Generate an SSH key so we can pull from GitHub.

```zsh
ssh-keygen -t ed25519 -C "INSERT COMMENT HERE"
```

Then add it to the SSH Agent.

```zsh
exec ssh-agent zsh
ssh-add ~/.ssh/id_ed25519
```
