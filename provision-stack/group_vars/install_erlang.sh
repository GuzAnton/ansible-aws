#!/bin/bash

# Update package lists
sudo apt update

# Install required packages
sudo apt install curl wget gnupg apt-transport-https -y

# Download Erlang Solutions GPG key and install it
curl -fsSL https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo gpg --dearmor -o /usr/share/keyrings/erlang.gpg

# Add Erlang Solutions repository to sources list
echo "deb [signed-by=/usr/share/keyrings/erlang.gpg] https://packages.erlang-solutions.com/ubuntu $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/erlang.list

# Update package lists again to refresh repositories
sudo apt update

# Install Erlang
sudo apt install erlang -y
###