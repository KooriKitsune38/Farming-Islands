#> kfi:main

scoreboard players enable @a my_id

scoreboard players enable @a spawn

scoreboard players enable @a home

scoreboard players enable @a sethome

scoreboard players enable @a tp

scoreboard players enable @a[tag=!kfi.HasIsland] generate_island

# Teleport Timer
execute as @a if score @s kfi.teleportTimer matches 0.. run function kfi:tp/timer

execute at @e[type=marker,tag=kfi.Spawn] run gamemode adventure @a[distance=..30,gamemode=!spectator,gamemode=!creative]