#!/bin/bash

networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001
echo "Set Wi-Fi DNS to:"
networksetup -getdnsservers Wi-Fi