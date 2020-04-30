#!/usr/bin/env bash

set -ex

rm -rf virtualenv
python3.7 -m venv virtualenv
. virtualenv/bin/activate
pip install pip --upgrade
pip install setuptools --upgrade
pip install wheel --upgrade

pip install .

virtualenv/bin/pip freeze
virtualenv/bin/pip list --format freeze
