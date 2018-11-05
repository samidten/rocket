#!/bin/bash

command='kubectl --namespace=kubedemo expose deployment --port=8000 mydemo --external-ip=192.168.0.111 --type=LoadBalancer'
echo $command
$command
