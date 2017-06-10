# Connect `ipython kernel` via `ssh` with `spyder`

## Server

```sh
jupyter --runtime-dir
# /run/user/1000/jupyter
ipython kernel
```

```sh
NOTE: When using the `ipython kernel` entry point, Ctrl-C will not work.

To exit, you will have to explicitly quit this process, by either sending
"quit" from a client, or using Ctrl-\ in UNIX-like environments.

To read more about this, see https://github.com/ipython/ipython/issues/2049


To connect another client to this kernel, use:
    --existing kernel-23091.json
```


## Client

```sh
scp ubuntu.pydemia.org:/run/user/1000/jupyter/kernel-23091.json ~/
ipython qtconsole --existing ~/kernel-23091.json --ssh ubuntu.pydemia.org
```

Done.
