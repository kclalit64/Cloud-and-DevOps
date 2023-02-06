#!/bin/bash

#the root user has an id of 0

if [ "$(id -u)" == "0" ]; then
    echo "This user is root"
else
    echo "This user is not root"
fi
