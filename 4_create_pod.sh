#!/bin/bash
command="kubectl --namespace=kubedemo run mydemo --image=samidten/mydemo:v1 --port=8000"
echo $command
$command
