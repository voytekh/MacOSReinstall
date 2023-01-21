#!/bin/bash


# Save To Disk (not to iCloud) By Default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically Quit Printer App Once The Print Jobs Complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable The “Are You Sure You Want To Open This Application?” Dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Remove duplicates In The “Open With” Menu.
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

#Remove Icons For Hard Drives, Servers, And Removable Media On The Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

#Keep folders At Top When Sorting By Name.
defaults write com.apple.finder _FXSortFoldersFirst -bool true

#Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

#Show the ~/Library and /Voluemes folder
chflags nohidden ~/Library
sudo chflags nohidden /Volumes

#Download and Install available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

#Finder: Show Hidden Files By Default
#defaults write com.apple.finder AppleShowAllFiles -bool true

#Avoid Creating .DS_Store Files On Network Or USB Volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Automatically Open A New Finder Window When A Volume Is Mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Put the Dock on the bottom of the screen
defaults write com.apple.dock "orientation" -string "left" && killall Dock

# Dock icon size of 36 pixels
defaults write com.apple.dock "tilesize" -int "36" && killall Dock

# Autohide the Dock when the mouse is out
defaults write com.apple.dock "autohide" -bool "true" && killall Dock

# Change the Dock opening and closing animation times
defaults write com.apple.dock "autohide-time-modifier" -float "0.3" && killall Dock

# Change the Dock opening delay
defaults write com.apple.dock "autohide-delay" -float "0.1" && killall Dock

# Show recently used apps in a separate section of the Dock
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

# Show only open application in Dock
# After enable and disable, you have to add app icon from zero
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# Indicate Hidden App Icons
defaults write com.apple.dock showhidden -bool TRUE; killall Dock

# Use Scroll Gestures on Dock app, upward scrolling to show all application windows
defaults write com.apple.dock scroll-to-open -bool TRUE; killall Dock

# Magnify Dock Icons
defaults write com.apple.dock largesize -int 64; killall Dock

# Reset Dock to Deafault
defaults delete com.apple.dock; killall Dock
