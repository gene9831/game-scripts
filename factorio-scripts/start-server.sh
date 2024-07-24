#!/bin/bash

tmux new -d -s Factorio 'cd ~/factorio && ./bin/x64/factorio --start-server ~/.local/factorio/save1.zip --server-settings ~/.local/factorio/server-settings1.json'
