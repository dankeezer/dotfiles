#!/bin/bash
# Ref: https://console.bluemix.net/docs/cli

echo
read -p "About to install IBM Cloud CLI Tools, are you sure you want this? [y/N]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo
  echo "Installing IBM Cloud CLI Tools..."
  curl -sL https://ibm.biz/idt-installer | bash
  ibmcloud api https://api.ng.bluemix.net
  ibmcloud plugin install cloud-databases
else
  echo
  echo "Skipping IBM Cloud CLI Tools..."
fi
