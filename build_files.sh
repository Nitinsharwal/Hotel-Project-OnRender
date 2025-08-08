
python3 -m ensurepip --upgrade
pip install --upgrade pip


pip install -r requirements.txt


python3 manage.py collectstatic --noinput


mkdir -p staticfiles_build
cp -r static/* staticfiles_build/
