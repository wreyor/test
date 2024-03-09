#!/bin/bash

# Loop through all secrets and print them
for secret_name in "${!SECRETS[@]}"; do
  echo "Secret name: ${secret_name}"
  echo "Secret value: ${SECRETS[${secret_name}]}"
done
