#!/bin/bash
set -e

# Install pip if needed and upgrade it
python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Collect static files into STATIC_ROOT
python3 manage.py collectstatic --noinput

# Ensure output folder exists
mkdir -p staticfiles_build

# Copy from STATIC_ROOT to final build folder
cp -r staticfiles_build/static/* staticfiles_build/ || echo "No static files found."
