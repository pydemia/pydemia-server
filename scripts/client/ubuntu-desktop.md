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
