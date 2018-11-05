#!/bin/bash

# Get the IP address of the VM
IP=192.168.0.111

echo $IP

# Get the NodePort of the service
NODEPORT=$(kubectl --namespace=kubedemo get services demo -o yaml | grep nodePort | cut -f2 -d:)

echo $NODEPORT

# Combine the two, trimming off whitespace
THEURL=$IP:$(echo $NODEPORT | awk '{print $1}')/hello

echo $THEURL

# curl it
while true
do 
  curl --connect-timeout 1 -s $THEURL;
  echo
  sleep 1;
done
