# Client-Ubuntu

## Applications

```txt
firefox
chrome
vivaldi
```

## Gnome Theme

* Flat Remix
```sh
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix-gnome
```


* Arc
```sh
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:Horst3180.list"
sudo apt-get update
sudo apt-get install arc-theme
```

## 

```sh
sudo apt update
sudo apt install tillix
```

* Setting
  - Appearance
    - Terminal title style: None
  - Shortcuts
    - Session
      - Add terminal down: `Alt+D`
      - Add terminal right: `Shift+Alt+D`
    - Window
      - Toggle fullscreen mode: `Shift+Alt+F`

* Change default terminal & shortcut
```sh
sudo update-alternatives --config x-terminal-emulator
```

It requires ``VTE Configuration`` if use with `bash` or `zsh`.

[!Link](https://gnunn1.github.io/tilix-web/manual/vteconfig/)

or 

Preferences > Profiles > (Default) > Command > Run command as a login shell


### Appearance

#### Login Color

```sh
sudo vim /usr/share/gnome-shell/theme/ubuntu.css
```

```css
#lockDialogGroup {
background: #2c001e url(file:///[fileLocation/filename.png]);
background-repeat: no-repeat;
background-size: cover;
background-position: center;
}
```

or

```css
#lockDialogGroup {
  background: none;
  background-color: none;
  background-gradient-direction: vertical;
  background-gradient-start: #7a8aa2;
  background-gradient-end: #7a8aa2;
}
```

#### Grub Theme

```sh
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer -y
```

```sh

/boot/grub/themes
```

#### System Indicator

```sh
sudo apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0
sudo apt-get install gnome-shell-extension-system-monitor

```

#### Plank

```sh
sudo add-apt-repository ppa:ricotz/docky
sudo apt-get update && sudo apt-get install plank
```


#### Conky

```sh
sudo apt-get install conky-all
# sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
# sudo apt install gdebi -y
# sudo apt install manpages-pl manpages-fr-extra
# sudo apt install coreutils
# wget https://launchpad.net/~teejee2008/+archive/ubuntu/ppa/+files/conky-manager_2.4~136~ubuntu16.04.1_amd64.deb
# sudo gdebi conky-manager*.deb
# sudo apt-get install conky-manager
sudo add-apt-repository ppa:mark-pcnetspec/conky-manager-pm9
sudo apt-get install conky-all
```

```sh
git clone https://github.com/zagortenay333/conky-Vision
```

#### Wine

```sh
sudo apt install wine-stable
sudo apt upgrade wine-stable
sudo apt-get install winbind
WINEARCH=win32 WINEPREFIX=~/.wine wine wineboot
WINEARCH=win64 WINEPREFIX=~/.wine wine wineboot
```

* Install `winetricks` to avoid `dll error`
```sh
cd ~/Downloads
sudo apt-get install cabextract
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod 777 ~/Downloads/winetricks
~/Downloads//winetricks --optout

~/Downloads//winetricks gdiplus riched30 wmp9 msxml6 d3dx9_43
```

```txt
1. Select the default wineprefix 체크(Checked)
2. Install a Windows DLL or component 체크(Checked)
3. gdiplus, msxml6, riched30, wmp9, d3dx9_43 체크(Checked)
```

```sh
cd ~/Downloads

mv Nanum* ~/.wine/drive_c/windows/Fonts/
chmod 644 ~/.wine/drive_c/windows/Fonts//Nanum*
gedit ~/.wine/system.reg
```

```diff
-"MS Shell Dlg"="Tahoma"
-"MS Shell Dlg 2"="Tahoma"
+"MS Shell Dlg"="NanumGothic"
+"MS Shell Dlg 2"="NanumGothic"
```

```sh
cd ~/Downloads
wget http://app.pc.kakao.com/talk/win32/KakaoTalk_Setup.exe
wine-stable ~/Downloads/KakaoTalk_Setup.exe
```

```sh
gedit ~/.local/share/applications/wine/Programs/KakaoTalk/KakaoTalk.desktop
```

```diff
-Exec=env WINEPREFIX="/home/<user>/.wine" wine-stable C:\\\\windows\\\\command\\\\start.exe /Unix /home/ubuntu/.wine/dosdevices/c:/ProgramData/Microsoft/Windows/Start\\ Menu/Programs/KakaoTalk/KakaoTalk.lnk
+Exec=env WINEPREFIX="/home/<user>/.wine" LANG="ko_KR.UTF-8" wine-stable C:\\\\windows\\\\command\\\\start.exe /Unix /home/ubuntu/.wine/dosdevices/c:/ProgramData/Microsoft/Windows/Start\\ Menu/Programs/KakaoTalk/KakaoTalk.lnk
```

```sh
sudo apt install gnome-shell-extension-top-icons-plus
```

```sh
gedit ~/.wine/user.reg 
```

```diff
[Software\\Wine\\DllOverrides] 1539441719
#time=1d46302e5bc8240
-"msxml3"="native,builtin"
-"riched20"="native,builtin"
-"usp10"="native,builtin"
```
