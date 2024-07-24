cp ~/steamapps/DST/mods/dedicated_server_mods_setup.lua.bak ~/steamapps/DST/mods/dedicated_server_mods_setup.lua
tmux new -d -s Master 'cd ~/steamapps/DST/bin64 && ./dontstarve_dedicated_server_nullrenderer_x64 -cluster Cluster_100 -shard Master'
tmux new -d -s Caves  'cd ~/steamapps/DST/bin64 && ./dontstarve_dedicated_server_nullrenderer_x64 -cluster Cluster_100 -shard Caves'

