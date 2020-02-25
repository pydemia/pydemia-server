# WSL

Run `Powershell` as administrator.

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux 

```


Shared Environment variables

```sh
export USERHOME="/mnt/c/Users/pydemia"
export WHOME=$USERHOME
export ONEDRIVEPATH="$USERHOME/OneDrive"

export APPS="/home/pydemia/apps"
export PYTHONPATH="$APPS/anaconda3/bin/python3"

export WSLENV=$WSLENV:PYTHONPATH/p:PATH/l
```

