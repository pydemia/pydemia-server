# Cloud Setting

## Installation

## `npm`

```sh
sudo apt install curl
sudo apt-get install -y nodejs
sudo apt-get install -y npm
```


### `java`

```sh
sudo add-apt-repository --remove ppa:webupd8team/java
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository --remove ppa:webupd8team/y-ppa-manager
sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt-get update

sudo mv /etc/apt/trusted.gpg.d/ /etc/apt/trusted.gpg.d.backup
sudo mkdir /etc/apt/trusted.gpg.d
sudo chmod 755 /etc/apt/trusted.gpg.d
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 40976EAF437D05B5

sudo apt-get install oracle-java8-installer

```

pip install jupyter_http_over_ws
