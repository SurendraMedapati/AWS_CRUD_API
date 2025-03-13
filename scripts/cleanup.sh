#!/bin/bash

# Usage: ./cleanup.sh dev OR ./cleanup.sh prod
STAGE=$1

if [[ -z "$STAGE" ]]; then
  echo "Usage: ./cleanup.sh <dev|prod>"
  exit 1
fi

echo "Removing deployment for $STAGE..."

# Remove the deployed resources
serverless remove --stage $STAGE

if [[ $? -eq 0 ]]; then
  echo "✅ Successfully removed $STAGE environment!"
else
  echo "❌ Failed to remove $STAGE environment!"
fi
