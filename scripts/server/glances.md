# Glances - Monitoring Tool

## Installation

```sh
pip install bottle
pip install glances
```

## Run

```
glances
```

## As a Web Server

```sh
glances -w
```


## Add a service

```sh
cd /etc/systemd/system/
sudo vim glances.service
```

```vi
[Unit]
Desciption=Monitoring Web Server

[Service]
Type=simple
PIDFile=/run/glances.pid
ExecStart=glances -w
User=pydemia
Group=pydemia
WorkingDirectory=/home/pydemia
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target

```

```sh
sudo systemctl daemon-reload
sudo systemctl enable glances.service
sudo service glances start
```