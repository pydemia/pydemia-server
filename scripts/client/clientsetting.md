# pydemia-client

## Terminal

## Editor

* Atom Editor

## Syntax Coloring

## Windows

### Turn on `ubuntu bash shell`

1. Enable `Developer Mode`  
Open Settings -> Update and Security -> For developers  
Select the Developer Mode radio button  

2. Enable `Windows Subsystem for Linux` feature  
From Start, search for "Turn Windows features on or off" (type 'turn')  
Select Windows Subsystem for Linux (beta)  # (In Korean : Linux용 Windows 하위시스템(베타) )  
Then Reboot  

3. Install & Configure `cmder`
`cmder` can be downloaded [here](http://cmder.net)  

Add a new console Setting:
![console setting](https://github.com/pydemia/pydemia-server/blob/master/scripts/cmder%20bash_ubuntu_setting.png?raw=true)

Start a new console:
![console start](https://github.com/pydemia/pydemia-server/blob/master/scripts/cmder%20bash_ubuntu_start.png?raw=true)

## Ubuntu

### UI Setting

#### Conky
```sh
sudo apt-get install conky-all -y

sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install conky-manager -y
```

Get Conky Themes [here](http://speedracker.deviantart.com/art/Supreme-Conky-Pack-Made-for-Conky-Manager-490766807).

#### Plank

### 'Multitouch' in Ubuntu

Install `touchegg`

```sh
sudo apt-get install touchegg
```

Add it on `startup application`
```sh
touchegg
```

Install `geis-tools`
```sh
sudo apt install geis-tools
```

Configuration

```sh
vim .xprofile
```

```vim
synclient TapButton2=0
synclient ClickFinger2=0
synclient TapButton3=0
synclient ClickFinger3=0
synclient HorizTwoFingerScroll=0
synclient VertTwoFingerScroll=0
touchegg &
```

### User Setting

#### Change existing `username`

1. Enter the __`logon` screen__ (__`log-off`__ or __`reboot`__)
2. Enter the __`tty`__ : `Ctrl` + `Alt` + `F1`
3. __`log-in`__ by __`root`__
4. Change current setting


```sh

```

```sh
# (Optional - remount by root) : mount -o remount,rw /
usermod -l <newname> -d /home/<newname> -m <oldname>
groupmod -n <newgroup> <oldgroup>
reboot
```
5. Go to the __`logon` screen__ back : `Ctrl` + `Alt` + `F7`
6. __`log-in`__ with your __`old-username`__ first
7. Go to __`System Setting`__ -> __`User Accounts`__
8. __`Unlock`__ & Change __`username`__ and __`reboot`__

Done.


