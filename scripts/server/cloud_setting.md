# Server Setting

## SSH KEY

```sh
ssh-keygen -t rsa -f ~/.ssh/[KEY_FILENAME] -C [USERNAME]
ssh-keygen -t rsa -f ~/.ssh/id_rsa -C "pydemia@gmail.com"

ssh-rsa 

```


## GCLOUD SDK

```sh
# Create environment variable for correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# Add the Cloud SDK distribution URI as a package source
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update the package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-sdk

```

In `.bashrc`:
```sh
alias  SSH_GCLOUD_GPU='gcloud compute --project "pydemia-cloud" ssh --zone "us-central1-c" "pydemia-gpu"'

```


```sh
sudo gpasswd -a choby google-sudoers
sudo gpasswd -d choby google-sudoers
```


### `Anaconda`

```sh

su root
cd
mkdir apps
mkdir Downloads
cd Downloads
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash ./Anaconda3-5.2.0-Linux-x86_64.sh
```

```sh
/usr/share/anaconda3

```

```sh
cd /usr/share
chmod -R 777 ./anaconda3 # chmod -R a=r,u+w,a+X ./anaconda3

```

```sh
vim /etc/bash.bashrc
```

```vi
# Environment Variables Setting ------------------------

if [ $USER = "root" ]; then
	export PATH="$PATH"
else
	export PATH="/usr/share/anaconda3/bin:$PATH"
fi

```


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

