#!/bin/bash

sudo cat > /etc/systemd/system/puma.service <<EOF
[Unit]
Description=Puma service
After=mongod.service
[Service]
Type=simple
User=ubuntu
Group=ubuntu
WorkingDirectory=/home/ubuntu/reddit
ExecStart=/usr/local/bin/puma
TimeoutSec=300
Restart=always
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl start puma
sudo systemctl enable puma
