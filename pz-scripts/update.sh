#!/bin/bash

steamcmd +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +force_install_dir /home/steam/steamapps/PZ +login anonymous +app_update 380870 validate +quit
