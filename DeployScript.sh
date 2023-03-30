#!/bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=~/Documents/CLO22Dev/MinSuperCoolaUppgift/ARM-Template.json
RG=CoolRG
deployName=DeployScript

az deployment group create --name $deployName --resource-group $RG --template-file $templatePath --verbose --parameters adminPublicKey="$PublicKey"