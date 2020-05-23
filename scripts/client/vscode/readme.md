# VS Code - Visual Studio Code

## Extension List

```sh
Anaconda Extension Pack
Atom Keymap
Beautify
Cobalt Next
Debugger for Chrome: Javascript
Debugger for Java
Django
File Tree View
GitLens - Git supercharged
Indent - Rainbow
Jinja
MagicPython
Maven for Java
Python
Python Extension Pack
SQL Server (mssql)
Symbols Treeview
Visual Studio IntelliCode
VSCode Jupyter Notebook Preview
VSCode Great Icons
vscode-icons
YAML
```



## Customization

### Interfaces
`symbols-tree-view` : A symbols view like taglist  
`symbols-tree-view-fix` : a bugfix
`file-icons` : Assign file extension icons and colors  
`minimap` : A preview of the full source code  
  - `minimap-find-and-replace`  
  - `minimap-highlight-selected`  
`set-syntax` :   
`tool-bar` : Package providing customisable tool bar  
`intensions` : Highlight API  


## Dev. Env.

### Base

```json
[
    {"editor.renderWhitespace": "all"},
]
```
zsh

//Use ZSH as the integrated terminal
"terminal.integrated.shell.osx": "/usr/local/bin/zsh"

### Python

#### Local
Find Setting Option From Settings:
```json
"python.condaPath": "/Users/pydemia/apps/anaconda/bin/conda"
```

(`cmd+shift+p` -> Python: Select Interpreter and select a kernel)

#### Remote

Install `Remote Development
ms-vscode-remote.vscode-remote-extensionpack
`
(This includes `Remote - SSH`, `Remote - Containers` and `Remote - WSL`.)
(https://code.visualstudio.com/blogs/2019/05/02/remote-development)


### Syntax Coloring

* Append a command `code` in `~/.bashrc`:
```vim
# VS Code as `code`
code () {
if [[ $# = 0 ]]
then
    open -a "Visual Studio Code"
else
    [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
    open -a "Visual Studio Code" --args "$F"
fi
}
```

```sh
npm install -g yo generator-code
```

```sh
code .
```

```sh
npm install -g vsce
cd <pkg>
https://marketplace.visualstudio.com/manage

```

```sh
vsce login pydemia
Personal Access Token for publisher 'pydemia': ****************************************************
```

```sh
vsce publish major
v8.0.0
 WARNING  A 'repository' field is missing from the 'package.json' manifest file.
Do you want to continue? [y/N] y
Publishing pydemia.cobalt2-pydemia@8.0.0...
 DONE  Published pydemia.cobalt2-pydemia@8.0.0
Your extension will live at https://marketplace.visualstudio.com/items?itemName=pydemia.cobalt2-pydemia (might take a few seconds for it to show up).
```

### Remote Extension

```sh
.vscode-remote/data/Machine/settings.json
```

```json
"terminal.integrated.shell.linux": "/usr/bin/zsh",
"terminal.integrated.shell.osx": "/usr/local/bin/zsh",
```


### Remote Docker Host

`settings.json`

#### Case: from local to remote-docker-host

```json
"docker.host": "ssh://[username]@[ip_or_domain]:port"
```

`ssh-agent` & `ssh-add [private_key]`

* `zsh` (with .ohmyzsh)

`~/.zshrc`

```sh
plugins = (
  ...
  ssh-agent
)
```


#### Case: from remote-ssh to its docker-host


```json
"docker.host": "unix:///var/run/docker.sock"
```


### Error

:warning:
```sh
Error Python Extension: 2020-05-23 12:07:26: Exception while attempting zmq : [Error: /usr/lib/x86_64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.22' not found (required by /home/pydemia/.vscode-server-insiders/extensions/ms-python.python-2020.5.80290/out/client/node_modules/zeromq/prebuilds/linux-x64/node.napi.glibc.node)
```

```sh
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-4.9
sudo apt-get upgrade libstdc++6
```
