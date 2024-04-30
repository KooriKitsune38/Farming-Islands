#> kfi:main

scoreboard players enable @a my_id

scoreboard players enable @a spawn

scoreboard players enable @a home

scoreboard players enable @a sethome

scoreboard players enable @a tp

scoreboard players enable @a coop

scoreboard players enable @a remove_coop

scoreboard players enable @a[tag=!kfi.HasIsland] generate_island

# Skeletons
execute if score .customSkeletons k.Values matches 1 as @e[type=skeleton] run data modify entity @s DeathLootTable set value "kf:skeletons"

# Teleport Timer
execute as @a if score @s kfi.teleportTimer matches 0.. run function kfi:tp/timer

# Gamemode
execute at @e[type=marker,tag=kfi.Spawn] run gamemode adventure @a[distance=..30,gamemode=!spectator,gamemode=!creative]

# Tp to spawn if y level too low
execute as @a positioned ~ -100 ~ if entity @s[dy=20] run tp @s @e[type=marker,tag=kf.Spawn,limit=1] 