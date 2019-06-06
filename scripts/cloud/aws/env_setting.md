# Env. Setting


## AWS CLI Setting

* Bundle Install
```sh
cd Downloads
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```

* pip

```sh
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip3 install awscli --upgrade --user
```


## Configuration

```sh
aws configure
AWS Access Key ID [None]: --
AWS Secret Access Key [None]: --
Default region name [None]: us-east-2
Default output format [None]:
```
