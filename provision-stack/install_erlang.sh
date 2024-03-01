#!/bin/bash

# Update apt package lists
sudo apt update

# Install required packages
sudo apt install curl wget gnupg apt-transport-https -y

# Download Erlang Solutions GPG key and save it to /usr/share/keyrings/erlang.gpg
curl -fsSL https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo gpg --dearmor -o /usr/share/keyrings/erlang.gpg

# Add Erlang Solutions repository to sources.list.d/erlang.list
echo "deb [signed-by=/usr/share/keyrings/erlang.gpg] https://packages.erlang-solutions.com/ubuntu $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/erlang.list

# Update apt package lists after adding repository
sudo apt update

# Install Erlang
sudo apt install erlang -y

