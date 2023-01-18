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
#### Policy
  - VPN policy [Add VPN settings on macOS devices in Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/vpn-settings-macos)
  - Apple Kerberos SSO app extension [Kerberos Single Sign-On (SSO) app extension for macOS](https://hmaslowski.com/home/f/kerberos-single-sign-on-sso-app-extension-for-macos)
  - Microsoft Enterprise SSO plug-in [Use the Microsoft Enterprise SSO plug-in on iOS/iPadOS and macOS devices in Microsoft Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/use-enterprise-sso-plug-in-ios-ipados-macos)




Nessesery configuration:

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


