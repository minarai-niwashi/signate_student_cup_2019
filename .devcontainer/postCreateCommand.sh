#!/bin/bash

python3 -m pip install --upgrade pip
python3 -m pip --no-cache-dir install -r requirements.txt
pre-commit install

cp signate.json $HOME/.signate
