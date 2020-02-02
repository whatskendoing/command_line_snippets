#!/bin/bash

# Grabs the expired certificate hashes
expired=$(security find-identity | grep EXPIRED | awk '{print $2}')
# Check for certs
if [ -z "$expired" ]
    then
        echo "No expired certificates, we're all good"
    else
    # Deletes the expired certs via their hash
    echo "Deleting expired certs"
    security delete-certificate -Z $expired
    fi
exit 0 
