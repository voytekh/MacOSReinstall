# MacOS Reinstall
Script to restore app and settings after MacOS reinstall

## Installation Plan
### Company Stuff (via Intune)
#### Application
  - Intune Company Portal: [Add the macOS Company Portal app](https://learn.microsoft.com/en-us/mem/intune/apps/apps-company-portal-macos)
  - Check Point Endpoint Security VPN: (need some works!!!)
  - O365: [Deploying Microsoft 365 Apps for Mac with Microsoft Intune - A Deep Dive](https://techcommunity.microsoft.com/t5/intune-customer-success/deploying-microsoft-365-apps-for-mac-with-microsoft-intune-a/ba-p/2243040)
  - Edge: [Add Microsoft Edge to macOS devices using Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/apps/apps-edge-macos)
  - Simple Sign Desktop:
    - [Intune Customer Experience Engineering Shell Script Repo](https://github.com/microsoft/shell-intune-samples)
    - [Deploying macOS apps with the Microsoft Intune scripting agent](https://techcommunity.microsoft.com/t5/intune-customer-success/deploying-macos-apps-with-the-microsoft-intune-scripting-agent/ba-p/2298072)
    - TeamViewer
#### Policy
  - VPN policy [Add VPN settings on macOS devices in Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/vpn-settings-macos)
  - Apple Kerberos SSO app extension [Kerberos Single Sign-On (SSO) app extension for macOS](https://hmaslowski.com/home/f/kerberos-single-sign-on-sso-app-extension-for-macos)
  - Microsoft Enterprise SSO plug-in [Use the Microsoft Enterprise SSO plug-in on iOS/iPadOS and macOS devices in Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/use-enterprise-sso-plug-in-ios-ipados-macos)




### Nessesery configuration:
#### Kerberos

Menu Bar -> Open Key Icon -> Login to get kerberos ticket
System Setings -> Network account server -> Edit -> Add -> Server -> Fill Down: Server adress, user name with join compute to domain priviledges, password
Open -> Ticket Viewer -> Add Identity -> Enter Company credential -> Set as Default

Config Internet Account

```shell
xcode-select --install
```
```shell
CurrentUser=$(echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ && ! /loginwindow/ {print $3}')
```
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$CurrentUser/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$CurrentUser/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
```shell
brew install --cask setapp
brew install --cask iterm2
brew install --cask 1password
brew install --cask adobe-acrobat-reader
brew install --cask balenaetcher
brew install --cask gpg-suite-no-mail
brew install --cask grammarly-desktop
brew install --cask handbrake
brew install --cask moom
brew install --cask powershell
brew install --cask visual-studio-code
```
```shell
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
```shell
brew install --cask obsidian
brew install --cask rectangle
brew install --cask the-unarchiver
brew install --cask vlc
brew install --cask whatsapp
brew install --cask zoom
```
### All manual installation stuff :(
#### SetApp application:
- SnippetsLab
- Get Backup Pro
- CleanMyMac X
- Gemini
- iStats Menus
- Lungo
- Meta
- Mission Control Plus
- Nitro PDF Pro
#### Application from websites:
- [DisplayLinkManager](https://www.synaptics.com/node/5026?filetype=exe)
- [Synology Drive Client](https://global.download.synology.com/download/Utility/SynologyDriveClient/3.2.1-13271/Mac/Installer/synology-drive-client-13271.dmg)
- [TinkerTool](https://www.bresink.eu/download3.php?PHPSESSID=d348386a3c952454dfad88d789d14a38)
- [Docker](https://desktop.docker.com/mac/main/arm64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module)
- [Parallels Destop](https://www.parallels.com/directdownload/pd18/?experience=enter_key)
#### Aplication from AppStore
- Notability
- Blackmagic Disk Speed Test
- GoodNotes 5
- HP Smart for Desktop
- Pluralsight: Learn Tech Skills
- VCE Simulator
- 1Password for Safari (Extension)
- Grammarly for Safari (Extension)
#### Other
- [Mac Evaluation Utility](https://appleseed.apple.com/sp/downloads/projects/1001315/downloads/1016716)



Settings:
Finder:
- Show all filename extensions
- Keep folders on top:
  - In windows when sorting by name
  - On Desktop
- When performing a search:
  - Search the Current Folder
  - 
