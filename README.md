# **<p style="color: blue">macOS Reinstall</p>**

Plan and script to restore app and settings after MacOS reinstall.

### 1. Company Stuff ###

+ Application pushed from **Intune**:
  1. Intune Company Portal: [Add the macOS Company Portal app](https://learn.microsoft.com/en-us/mem/intune/apps/apps-company-portal-macos)
  2. O365: [Deploying Microsoft 365 Apps for Mac with Microsoft Intune - A Deep Dive](https://techcommunity.microsoft.com/t5/intune-customer-success/deploying-microsoft-365-apps-for-mac-with-microsoft-intune-a/ba-p/2243040)
  3. Edge: [Add Microsoft Edge to macOS devices using Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/apps/apps-edge-macos)
  4. Simple Sign Desktop:
    - [Intune Customer Experience Engineering Shell Script Repo](https://github.com/microsoft/shell-intune-samples)
    - [Deploying macOS apps with the Microsoft Intune scripting agent](https://techcommunity.microsoft.com/t5/intune-customer-success/deploying-macos-apps-with-the-microsoft-intune-scripting-agent/ba-p/2298072)
  5. TeamViewer
  6. Rossetta2

+ Policy settings to push from Intune:
  - VPN policy [Add VPN settings on macOS devices in Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/vpn-settings-macos)
  - Apple Kerberos SSO app extension [Kerberos Single Sign-On (SSO) app extension for macOS](https://hmaslowski.com/home/f/kerberos-single-sign-on-sso-app-extension-for-macos)
  - Microsoft Enterprise SSO plug-in [Use the Microsoft Enterprise SSO plug-in on iOS/iPadOS and macOS devices in Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/use-enterprise-sso-plug-in-ios-ipados-macos)

+ Manual Configuration:
  + **Kerberos:**
    + Open -> Menu Bar -> Open "Key" Icon -> Login to get Kerberos ticket
    + Open -> System Settings -> Network account server -> Edit -> Add -> Server -> Fill Down:
      + Server address,
      + User name with privileges to join compute to Active Directory Domain,
      + Provide User Password
    + Open -> Ticket Viewer -> Add Identity -> Enter Company credential -> Set as Default
  + **Simply Sign Desktop:**
    + After Simply Sign Desktop application, double tap on the app icon -> Get Info -> Set "Open using Rosetta"

---

### To Do:
- Write a script to renew Kerberos Token automatically
- Add Kerberos configuration (command line/Intune script)
- Config Internet Account from the command line
- Check Point Endpoint Security VPN needs deep dive for the correct configuration
- Set "Open using Rosetta" from the command line for Simply Sign Desktop

---

### 2. Privat Stuff ###

Install and configure Xcode console tools.

Next, install Homebrew with the available application and tools:
- setapp
- iterm2
- 1password
- adobe-acrobat-reader
- balenaetcher
- gpg-suite-no-mail 
- grammarly-desktop 
- handbrake 
- moom 
- powershell 
- visual-studio-code

### Application for manual installation. ###

***Setapp applications:***
- SnippetsLab
- Get Backup Pro
- CleanMyMac X
- Gemini
- iStats Menus
- Lungo
- Meta
- Mission Control Plus
- Nitro PDF Pro

***Application to install from producer websites:***
- [DisplayLinkManager](https://www.synaptics.com/node/5026?filetype=exe)
- [Synology Drive Client](https://global.download.synology.com/download/Utility/SynologyDriveClient/3.2.1-13271/Mac/Installer/synology-drive-client-13271.dmg)
- [TinkerTool](https://www.bresink.eu/download3.php?PHPSESSID=d348386a3c952454dfad88d789d14a38)
- [Docker](https://desktop.docker.com/mac/main/arm64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module)
- [Parallels Destop](https://www.parallels.com/directdownload/pd18/?experience=enter_key)
- [Azure Data Studio](https://go.microsoft.com/fwlink/?linkid=2215346)
- [Azure Storage Explorer](https://go.microsoft.com/fwlink/?linkid=2216184)
- [Check Point Endpoint Security VPN](https://supportcenter.checkpoint.com/supportcenter/portal/user/anon/page/default.psml/media-type/html?action=portlets.DCFileAction&eventSubmit_doGetdcdetails=&fileid=120374)
- [Mac Evaluation Utility](https://appleseed.apple.com/sp/downloads/projects/1001315/downloads/1016716)

***Aplication to install from AppStore:***
- Notability
- Blackmagic Disk Speed Test
- GoodNotes 5
- HP Smart for Desktop
- Pluralsight: Learn Tech Skills
- VCE Simulator
- 1Password for Safari (Extension)
- Grammarly for Safari (Extension)

### Settings ###

# Save To Disk (not to iCloud) By Default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false


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
brew install --cask cheatsheet
brew install --cask latest
brew install lsd
brew install glow
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
brew install --cask latest
brew install midnight-commander
```


Settings:
Acrobat Reader:
- Turn On "Open using Rosetta"
Finder:
- Show all filename extensions
- Keep folders on top:
  - In windows when sorting by name
  - On Desktop
- When performing a search:
  - Search the Current Folder
  - On Desktop

  
