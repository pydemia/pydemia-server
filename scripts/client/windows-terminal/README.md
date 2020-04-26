# WSL

Run `Powershell` as administrator.

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux 

```

```sh
vim /etc/wsl.conf

# Now make it look like this and save the file when you're done: 
[automount]
root = /
options = "metadata"

```


## Shared Environment variables

```sh
export USERHOME="/mnt/c/Users/pydemia"
export WHOME=$USERHOME
export ONEDRIVEPATH="$USERHOME/OneDrive"

export APPS="/home/pydemia/apps"
export PYTHONPATH="$APPS/anaconda3/bin/python3"

export WSLENV=$WSLENV:PYTHONPATH/p:PATH/l
```

## Profile Settings

<https://github.com/microsoft/terminal/blob/master/doc/cascadia/SettingsSchema.md>
