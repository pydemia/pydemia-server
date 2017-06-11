# Create Custom Shortcut in Ubuntu

```sh
cd /usr/share/applications
vim custom_appicon.desktop
```

```vim
[Desktop Entry]
Version=3.1.3
Type=Application
Name=Spyder
GenericName=Spyder
Comment=Scientific PYthon Development EnviRonment - Python3
TryExec=spyder %F
Exec=spyder %F
Categories=Development;Science;IDE;Qt;
Icon=/home/pydemia/apps/anaconda3/share/applications/spyder-icon-1024x1024.png
Terminal=false
StartupNotify=true
#MimeType=text/x-python;

```
Its icon

Done.
