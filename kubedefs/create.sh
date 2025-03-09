#!/bin/bash

kubectl create -f secret.yaml
kubectl create -f dbpvc.yaml
kubectl create -f dbdeploy.yaml
kubectl create -f dbservice.yaml
kubectl create -f mcdep.yaml
kubectl create -f mcservice.yaml
kubectl create -f rmqdeploy.yaml
kubectl create -f rmqservice.yaml
kubectl create -f appdeploy.yaml
kubectl create -f appservice.yaml.yaml
kubectl create -f appservice.yaml
kubectl create -f appingress.yaml


#Linux Tips
#To replace create to delete in the list -> esc + :%s/\<create\>/delete/g
#To reverse the entire file -> esc + :g/^/m0

