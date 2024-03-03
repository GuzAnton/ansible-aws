#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade

# Install required packages
sudo apt install curl gnupg

# Add RabbitMQ GPG key
curl -fsSL https://packages.rabbitmq.com/gpg | sudo apt-key add -

# Add RabbitMQ repository
sudo add-apt-repository 'deb https://dl.bintray.com/rabbitmq/debian focal main'

# Update package list after adding repository
sudo apt update

# Install RabbitMQ server
sudo apt install rabbitmq-server
