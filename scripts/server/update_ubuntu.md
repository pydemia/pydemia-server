# Ubuntu Updates

## `16.04` to `18.04`

```sh
$ sudo do-release-upgrade
```

## `18.04` to `20.04`


```sh
$ sudo do-release-upgrade
Checking for a new Ubuntu release
Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings
There is no development version of an LTS available.
To upgrade to the latest non-LTS develoment release
set Prompt=normal in /etc/update-manager/release-upgrades.

$ sudo do-release-upgrade -d
Checking for a new Ubuntu release
Failed to connect to https://changelogs.ubuntu.com/meta-release-lts-development. Check your Internet connection or proxy settings
There is no development version of an LTS available.
To upgrade to the latest non-LTS develoment release
set Prompt=normal in /etc/update-manager/release-upgrades.
```

```sh
sudo vim /etc/update-manager/meta-release
```

```diff
[METARELEASE]
URI = https://changelogs.ubuntu.com/meta-release
--URI_LTS = https://changelogs.ubuntu.com/meta-release-lts
++URI_LTS = http://changelogs.ubuntu.com/meta-release-lts
URI_UNSTABLE_POSTFIX = -development
URI_PROPOSED_POSTFIX = -proposed
```

Then,

```sh
$ sudo do-release-upgrade
Checking for a new Ubuntu release
There is no development version of an LTS available.
To upgrade to the latest non-LTS develoment release
set Prompt=normal in /etc/update-manager/release-upgrades.

$ sudo do-release-upgrade -d
Checking for a new Ubuntu release
Get:1 Upgrade tool signature [1,554 B]
Get:2 Upgrade tool [1,348 kB]
Fetched 1,350 kB in 0s (0 B/s)
authenticate 'focal.tar.gz' against 'focal.tar.gz.gpg'
extracting 'focal.tar.gz'

Reading cache
...
```
