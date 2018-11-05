#!/bin/bash

# back in the days of replication controllers
#command='kubectl --namespace=kubedemo rolling-update mydemo --image=samidten/mydemo:v1 --update-period=3s'

# now with deployments
command='kubectl --namespace=kubedemo set image deployment/mydemo mydemo=samidten/mydemo:v2'

echo $command
$command
