#!/bin/bash

# Usage: ./deploy.sh dev OR ./deploy.sh prod
STAGE=$1

if [[ -z "$STAGE" ]]; then
  echo "Usage: ./deploy.sh <dev|prod>"
  exit 1
fi

echo "Deploying to $STAGE..."

# Deploy using Serverless
serverless deploy --stage $STAGE

if [[ $? -eq 0 ]]; then
  echo "✅ Deployment to $STAGE successful!"
else
  echo "❌ Deployment failed!"
fi
