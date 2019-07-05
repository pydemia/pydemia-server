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

* Change default terminal & shortcut
```sh
sudo update-alternatives --config x-terminal-emulator
```

It requires ``VTE Configuration`` if use with `bash` or `zsh`.

[!Link](https://gnunn1.github.io/tilix-web/manual/vteconfig/)

or 

Preferences > Profiles > (Default) > Command > Run command as a login shell

