#!/bin/bash
cd /home/kavia/workspace/code-generation/vehicle-management-system-250377-250392/vehicle_management_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

