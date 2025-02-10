#!/bin/bash

# This script starts the OpenWebUI.
# To make this script executable, run the following command in the terminal:
# chmod +x runMacOS.sh

export DATA_DIR="/Applications/DeepSeekGuide/open-webui-stable/data"
uvx --python 3.11 open-webui@v0.5.10 serve --port 3060