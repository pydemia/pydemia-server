# pydemia-server

* [pydemia-client Setting](https://github.com/pydemia/pydemia-server/blob/master/scripts/clientsetting.md)

## SSL Certificate

### Install `openssl`

```sh
sudo apt-get install openssl
```

### Create `ssl`

```sh
openssl genrsa -des3 -out server.key 2048

Generating RSA private key, 2048 bit long modulus
......+++
.............+++ 
e is 65537 (0x10001)
Enter pass phrase for server.key: 
Verifying - Enter pass phrase for server.key: 
```

### Create `ssl request`

```sh
openssl req -new -key server.key -out server.csr
```

```sh
Enter pass phrase for server.key:
You are about to be asked to enter information that will be incorporated
into your certificate request.  
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank   
For some fields there will be a default value,     
If you enter '.', the field will be left blank. 
-----                                 
Country Name (2 letter code) [AU]:KR    
State or Province Name (full name) [Some-State]: *
Locality Name (eg, city) []:*
Organization Name (eg, company) [Internet Widgits Pty Ltd]: *
Organizational Unit Name (eg, section) []: *
Common Name (e.g. server FQDN or YOUR name) []:pydemia.org
Email Address []:pydemia@gmail.com                                                                                                       

Please enter the following 'extra' attributes 
to be sent with your certificate request   
A challenge password []: 
An optional company name []: 
```


### (Optional) Remove Password from `.key`

```sh
openssl rsa -in server.key.origin -out server.key
Enter pass phrase for server.key.origin:
```


### Create `cert` file via `openssl`

```sh
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
```


### Clear up the old logs

`logrotate`

```sh
sudo apt-get install logrotate
sudo vim /etc/logrotate.conf

cd /etc/logrotate.d


```

### apt Error `oracle-java7-installer`

```sh
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java7-installer
```


Download `jdk-7u80-linux-x64.tar.gz` from oracle website.

```sh
ls /var/cache/oracle-jdk7-installer/
---------------------------------------------------------------
jar.binfmt  javaws-wrapper.sh  jdk-7u80-linux-x64.tar.gz  wgetrc

sudo cp ~/Downloads/jdk-7u55-linux-x64.tar.gz /var/cache/oracle-jdk7-installer/

md5sum jdk-7u80-linux-x64.tar.gz
---------------------------------------------------------------
6152f8a7561acf795ca4701daa10a965 jdk-7u80-linux-x64.tar.gz

sudo apt-get install oracle-java7-installer
```

## Jupyter

[jupyter setting](https://github.com/pydemia/Jupyter/blob/master/README.md)


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


