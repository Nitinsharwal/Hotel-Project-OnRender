#!/bin/bash
set -e

python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

python3 manage.py collectstatic --noinput

mkdir -p staticfiles_build
cp -r static/* staticfiles_build/
