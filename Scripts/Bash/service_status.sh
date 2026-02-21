#!/bin/bash

echo "Enter service name:"
read service

systemctl status $service --no-pager