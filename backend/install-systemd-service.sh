#!/bin/bash

if [ -f /etc/systemd/system/UpTalentBackend.service ]; then
    echo "systemd unit already installed!"
else
    sudo cp ./backend/UpTalentBackend.service /etc/systemd/system/UpTalentBackend.service
    sudo systemctl daemon-reload
    echo "systemd unit installed!"
fi