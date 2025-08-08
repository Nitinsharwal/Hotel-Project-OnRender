#!/bin/bash

# Exit immediately if a command fails
set -e

# Upgrade pip using python3
python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip

# Install all dependencies from requirements.txt
python3 -m pip install -r requirements.txt

# Run Django collectstatic
python3 manage.py collectstatic --noinput

# Create the output folder for Vercel
mkdir -p staticfiles_build
cp -r static/* staticfiles_build/
