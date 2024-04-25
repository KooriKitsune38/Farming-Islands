#> kfi:main

scoreboard players enable @a my_id

scoreboard players enable @a spawn

scoreboard players enable @a home

scoreboard players enable @a sethome

scoreboard players enable @a[tag=!kfi.HasIsland] generate_island

execute at @e[type=marker,tag=kfi.Spawn] run gamemode adventure @a[distance=..30,gamemode=!spectator,gamemode=!creative]