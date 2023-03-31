#!/bin/bash

if [ -f /etc/systemd/system/skillscope.service ]; then
    echo "systemd unit already installed!"
else
    sudo cp ./backend/skillscope.service /etc/systemd/system/skillscope.service
    sudo systemctl daemon-reload
    echo "systemd unit installed!"
fi