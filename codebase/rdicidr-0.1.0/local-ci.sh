#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting local CI pipeline..."

# Install dependencies
echo "Installing dependencies..."
npm install

# Lint the code
echo "Running ESLint..."
npm run lint

# Format the code
echo "Running Prettier..."
npm run prettier

# Run tests
echo "Running tests with Jest (CI=true)..."
CI=true npm run test

# Build the application
echo "Building the project..."
npm run build

echo "Local CI pipeline completed successfully!"