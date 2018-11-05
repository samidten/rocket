#!/bin/bash

command='kubectl --namespace=kubedemo scale deployment mydemo --replicas=3'
echo $command 
$command
