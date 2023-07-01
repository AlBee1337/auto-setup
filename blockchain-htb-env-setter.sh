#! /usr/bin/env bash
json_file="/opt/blockchain-connection.json"

# Extract the values from the JSON file using jq and assign them to variables
private_key=$(jq -r '.PrivateKey' "$json_file")
address=$(jq -r '.Address' "$json_file")
target_address=$(jq -r '.TargetAddress' "$json_file")
setup_address=$(jq -r '.setupAddress' "$json_file")

# Set the values as environment variables
tmux setenv cip http://$1
tmux setenv priv_key $private_key
tmux setenv addr $address
tmux setenv target_addr $target_address
tmux setenv setup_addr $setup_address
