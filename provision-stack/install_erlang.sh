#!/bin/bash

# Add Erlang GPG key
wget -O - https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -

# Add Erlang repository
echo "deb https://packages.erlang-solutions.com/ubuntu $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/erlang.list

# Update apt package index
sudo apt update

# Install Erlang
sudo apt install -y erlang
