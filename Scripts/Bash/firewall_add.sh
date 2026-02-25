#!/bin/bash

read -p "Enter port to allow: " port

sudo ufw allow $port

echo "Port $port allowed in firewall."