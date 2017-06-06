# User Setting

## Change existing `username`

1. Enter the `logon` screen (`log-off` | `reboot`)
2. Enter the `tty` : `Ctrl` + `Alt` + `F1`
3. login by root
4. Change current setting

(Optional) Re-mount
```sh
mount -o remount,rw /
```

```sh
usermod -l <newname> -d /home/<newname> -m <oldname>
groupmod -n <newgroup> <oldgroup>
reboot
```
5. Go to the `logon` screen back : `Ctrl` + `Alt` + `F7`
6. `login` with your old-username first
7. Go to `System Setting` -> `User Accounts`
8. `Unlock` & Change `username` and `reboot`
Done.
