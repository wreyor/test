#!/bin/bash

# Retrieve secrets using the GitHub API 
secrets=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" https://api.github.com/repos/wreyor/test/actions/secrets | jq -r '.secrets[].name')

# Loop through the secrets and store them as environment variables
for secret in $secrets; do
  secret_value=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" https://api.github.com/repos/wreyor/test/actions/secrets/$secret | jq -r '.encrypted_value' | base64 --decode)
  export $secret=$secret_value
done
