#!/bin/bash

set -e

python3 -m venv ~/.virtualenvs/nvim3
source ~/.virtualenvs/nvim3/bin/activate
python3 -m pip install -U pynvim


# Run this manully, can't auto install plugins due to error
# nvim +'PlugInstall --sync' +qa
# nvim +UpdateRemotePlugins +qa