
# Sets the location where screenshots are saved.
defaults write com.apple.screencapture location -string "${HOME}/Downloads"
# Sets file type to PNG.
defaults write com.apple.screencapture type -string "png"
# Disables the shadow effect.
defaults write com.apple.screencapture disable-shadow -bool true