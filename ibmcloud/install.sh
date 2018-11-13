#!/bin/bash
# Ref: https://console.bluemix.net/docs/cli

echo "Installing IBM Cloud CLI Tools..."
curl -sL https://ibm.biz/idt-installer | bash
ibmcloud plugin install container-service -r "IBM Cloud"
ibmcloud login -a https://api.ng.bluemix.net -sso
