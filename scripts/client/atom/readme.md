# Atom

## Package List

```sh
Hydrogen                   hydrogen-python            linter-julia               pydemia-atom-syntax  
atom-clock                 indent-detective           linter-pyflakes            #python-indent  
autocomplete-clang         ink                        #linter-pylama             python-tools  
autocomplete-python        intentions                 linter-python              remote-ftp  
build                      julia-client               linter-ui-default          script  
busy-signal                julia-ide                  minimap                    set-syntax  
cobalt2-syntax             language-ini               minimap-find-and-replace   symbols-tree-view  
file-icons                 language-julia             minimap-highlight-selected tool-bar  
highlight-selected         latex-completions          #platformio-ide            uber-juno  
hydrogen-auth              linter                     platformio-ide-debugger    project-manager
hydrogen-launcher          linter-gcc                 platformio-ide-terminal    language-r
symbols-tree-view-fix
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


### Editor
`highlight-selected` : Highlights the current word selected  
`indent-detective`  
`autocomplete-python`  
`latex-completions` : Easy input for unicode characters  

### Backend

`ink`  
`linter`  
`linter-ui-default`  

### For `python`

`linter-pyflakes`  
`linter-python`  
`python-tools` : python tools  
  - `ctrl+alt+u`(Show usages and edit all)  
  - `ctrl+alt+g`(Goto definition)  
  - `ctrl+alt+e`(Select str contents)  

### For `R`

`language-r`

### For `julia`

`julia-client`  
`julia-ide`  
`language-julia`  
`linter-julia`  



## Dev on Local

* Main Tools  
  - `Hydrogen` : Run code interactively.  
    * `hydrogen-launcher`  
    * `hydrogen-auth`  
    * `hydrogen-python`  
    * `platformio-ide-terminal`  
  - `ploatformio-ide`  
    * `platformio-ide-debugger`  
  -`uber-juno` : julia IDE  

### build

`build` : Build your current project  
`script` : Run code in Atom  

### Local jupyter kernel

`Hydrogen` : Run code interactively  
  * `hydrogen-launcher`  

## Remote Connection

### edit

`remote-ftp` : Enable browsing remote FTP/FTPS/SFTP just like the built-in tree view. Requires a project.  
  - [`.ftpconfig`](.ftpconfig)  

### Remote jupyter kernel

`Hydrogen` - Setting - Kernel Gateways  

```sh
[{"name": "pydemia-server",
  "options": {"baseUrl": "http://<jupyter-url>:<jupyter-port>",
              "wsUrl": "ws://<jupyter-url>:<websocket-port:jupyter-port>",
              "token": "sha1:aaad7f464ecc:c45b4"
             }
 }
]
```


# Atom

* `julia`
  - `uber-juno`  
  - `julia-ide`  

* Interfaces
  - `symbols-tree-view`  
  - `minimap`  
  - `file-icons`  
  - `atom-clock`  

* Productivity
  - `python-tools`
  - `linter-pyflakes`  
  - `linter-flake8`  
  - `linter-jedi`  

  - `github`  

* Interpreter
  - `platformio-ide-terminal`  
  - `hydrogen`  
  - `hydrogen-launcher`  
  - `ink`  

* Remote Access
  - `remote-ftp`  
  - `remote-edit`  

* DataBase
  - `data-atom`  

* Themes
  - `pydemia-syntax`  
  
  
