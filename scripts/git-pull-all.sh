#!/bin/bash
REPOSITORIES=(DNC-DShop DNC-DShop.Api DNC-DShop.Common DNC-DShop.Messages DNC-DShop.Services.Customers DNC-DShop.Services.Identity DNC-DShop.Services.Notifications DNC-DShop.Services.Operations DNC-DShop.Services.Orders DNC-DShop.Services.Products DNC-DShop.Services.Signalr DNC-DShop.Services.Storage)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Updating repository: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     git checkout develop
     git pull
     git checkout master
     git pull
     git checkout develop
     cd ..
done
