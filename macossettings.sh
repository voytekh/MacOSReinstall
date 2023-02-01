#!/bin/bash

# Close any open System Preferences panes, to prevent them from overriding settings
osascript -e 'tell application "System Preferences" to quit'

# iCloud

# Save To Disk (not to iCloud) By Default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Printer

# Automatically Quit Printer App Once The Print Jobs Complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable The “Are You Sure You Want To Open This Application?” Dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Screenshot

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Desktop

#Avoid Creating .DS_Store Files On Network Or USB Volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


# System

#Download and Install available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Set ComputerName / HostName
sudo scutil --set ComputerName "newhostname" && \
sudo scutil --set HostName "newhostname" && \
sudo scutil --set LocalHostName "newhostname" && \
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "newhostname"

# Dock

# Put the Dock on the bottom of the screen
defaults write com.apple.dock "orientation" -string "left"

# Dock icon size of 36 pixels
defaults write com.apple.dock "tilesize" -int "36"

# Autohide the Dock when the mouse is out
defaults write com.apple.dock "autohide" -bool "true"

# Change the Dock opening and closing animation times
defaults write com.apple.dock "autohide-time-modifier" -float "0.3"

# Change the Dock opening delay
defaults write com.apple.dock "autohide-delay" -float "0.1"

# Show recently used apps in a separate section of the Dock
defaults write com.apple.dock "show-recents" -bool false

# Show only open application in Dock (After enable and disable this option, you have to add desired app icons from scratch) 
defaults write com.apple.dock static-only -bool true

# Indicate Hidden App Icons
defaults write com.apple.dock showhidden -bool true

# Use Scroll Gestures on Dock app, upward scrolling to show all application windows
defaults write com.apple.dock scroll-to-open -bool true

# Magnify Dock Icons
defaults write com.apple.dock largesize -int 64

# Reset Dock to Default )when things go too far)
# defaults delete com.apple.dock

# Dock Restart
killall Dock

# Finder Settings

# Show Full Path in Finder Title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show "Quit Finder" Menu Item
defaults write com.apple.finder QuitMenuItem -bool true

# Show Path Bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Automatically Open A New Finder Window When A Volume Is Mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Keep folders At Top When Sorting By Name.
defaults write com.apple.finder _FXSortFoldersFirst -bool true

#Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Remove duplicates In The “Open With” Menu.
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Show the ~/Library and /Voluemes folder
chflags nohidden ~/Library
sudo chflags nohidden /Volumes

# Show Hidden Files By Default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Remove Icons For Hard Drives, Servers, And Removable Media On The Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Set Current Folder as Default Search Scope
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Set Default Finder Location to Home Folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Set Sidebar Icon Size To Small
defaults write -g NSTableViewDefaultSizeMode -int 2

# Show All Filename Extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Use List View For Windows
defaults write com.apple.finder FXPreferredViewStyle -string "nlsv"



# Restart Finder To See Changes
killall Finder

# Trackpad
# Enable Tap To Click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Use scroll gesture with the Ctrl (^) modifier key to zoom
# defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
# defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
# Follow the keyboard focus while zoomed in
# defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Set a blazingly fast keyboard repeat rate
# defaults write NSGlobalDomain KeyRepeat -int 1
# defaults write NSGlobalDomain InitialKeyRepeat -int 10

# ToDo
# Customise Finder SideBar
# Prevent automatic sleeping on power adapter when the display is off