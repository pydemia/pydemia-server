# User Setting

## Change existing `username`

1. Enter the __`logon` screen__ (`log-off` or `reboot`)
2. Enter the __`tty`__ : `Ctrl` + `Alt` + `F1`
3. __`log-in`__ by `root`
4. Change current setting

(Optional) __Re-mount__
```sh
mount -o remount,rw /
```

```sh
usermod -l <newname> -d /home/<newname> -m <oldname>
groupmod -n <newgroup> <oldgroup>
reboot
```
5. Go to the __`logon` screen__ back : `Ctrl` + `Alt` + `F7`
6. __`log-in`__ with your __`old-username`__ first
7. Go to __`System Setting`__ -> __`User Accounts`__
8. __`Unlock`__ & Change __`username`__ and __`reboot`__
Done.
