# Configuring Diablo IV via GPT

## Install Required Beta Software

### Xcode 15 Beta 2 and Xcode Command Line Tools Beta 2
Download Xcode 15 Beta 2 and Command Line Tools for Xcode 15 Beta 2 from [https://developer.apple.com/download/all](https://developer.apple.com/download/all/?q=xcode%20command%20line%20tools%2015).

Once downloaded, install them both. Then run:

```zsh
xcode-select -p
```

and confirm that you see something like `/Applications/Xcode-beta.app/Contents/Developer`. If you see Xcode.app instead of Xcode-beta.app, then run:

```zsh
xcode-select -s /Applications/Xcode-beta.app/Contents/Developer
```

### Install Game Porting Toolkit

Download and Install the Game Porting Toolkit from [https://developer.apple.com/download/all](https://developer.apple.com/download/all/?q=game%20porting%20toolkit).

### Install Rosetta 2

If not already installed, you can easily install Rosetta 2 by running `softwareupdate --install-rosetta` from the terminal.

## Set Terminal to use Intel Architecture

```zsh
arch -x86_64 zsh
```

## Install Homebrew for Intel

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Prepare Diablo IV

Create a games directory somewhere. I chose to make mine in my Home folder.

```zsh
mkdir ~/Games
mkdir ~/Games/Diablo4
```

### Configure Wine

First we tell Wine where the games are located:

```zsh
export WINEPREFIX=~/Games/Diablo4
```

Next we configure Wine:

```zsh
`brew --prefix game-porting-toolkit`/bin/wine64 winecfg
```

A “Wine configuration” window should appear on your screen (ignore any errors you may see in the terminal). Change the version of Windows to Windows 10. Choose Apply and then OK to exit winecfg.

Now, install the Game Porting Toolkit library into Wine's library directory

```zsh
ditto /Volumes/Game\ Porting\ Toolkit-1.0/lib/ `brew --prefix game-porting-toolkit`/lib/
```

To keep us from having to mount the GPT Disk Image again and again, we can copy its required parts over to `/usr/local/bin`:

```zsh
cp /Volumes/Game\ Porting\ Toolkit-1.0/gameportingtoolkit* /usr/local/bin
```

Lastly we need to set some Windows Registry keys to match what Battle.net will expect:

```zsh
`brew --prefix game-porting-toolkit`/bin/wine64 reg add 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentBuild /t REG_SZ /d 19042 /f
`brew --prefix game-porting-toolkit`/bin/wine64 reg add 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentBuildNumber /t REG_SZ /d 19042 /f
`brew --prefix game-porting-toolkit`/bin/wineserver -k
```


## Install Battle.net app and Diablo IV for Windows

Download the Battle.net installer from [https://www.blizzard.com/download](https://www.blizzard.com/download/confirmation?platform=windows&locale=en_US&product=bnetdesk) and save it to your ~/Downloads folder.

Once downloaded, it's time to run it:

```zsh
gameportingtoolkit ~/Games/Diablo4 ~/Games/Diablo4/drive_c/users/crossover/Downloads/Battle.net-Setup.exe
```

After a few moments, you should see the Battle.Net app on your screen. Login with your Blizzard account and install Diablo IV. Accept the defaults as the installer progresses. After installing, you can launch the game.

## Diablo IV Graphic Settings

XXXX

## Launch Diablo IV / Create Shortcut

You can always launch Diablo 4 using the following command (this command disables the performance HUD):

```zsh
PATH="/usr/local/bin:${PATH}" arch -x86_64 /usr/local/bin/gameportingtoolkit-no-hud ~/Games/Diablo4  ~/Games/Diablo4/drive_c/Program\ Files\ \(x86\)/Diablo\ IV/Diablo\ IV\ Launcher.exe
```
