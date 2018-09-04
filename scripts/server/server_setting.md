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
sudo gpasswd -d choby google-sudoers
```
