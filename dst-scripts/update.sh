#!/bin/bash

steamcmd +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +force_install_dir /home/steam/steamapps/DST +login anonymous +app_update 343050 validate +quit

# /home/steam/steamapps/DST/bin64/dontstarve_dedicated_server_nullrenderer_x64 -only_update_server_mods
