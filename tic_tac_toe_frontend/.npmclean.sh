#!/bin/bash
# Remove lock file if present (corruption/partial writes may cause the JSON parse error)
rm -f package-lock.json

# Clean npm cache forcefully to avoid using corrupted package data
npm cache clean --force

# Install dependencies to regenerate lock file and prepare for build/lint
npm install
