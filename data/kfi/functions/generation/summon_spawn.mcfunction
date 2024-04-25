#> kfi:generation/summon_spawn

# Forceload
forceload add ~ ~ ~ ~

# Kill other spawn
kill @e[type=marker,tag=kfi.Spawn]

# Summon
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[kfi.Spawn]}
execute rotated as @s as @e[type=marker,tag=kfi.Spawn] positioned as @s run tp @s ~ ~ ~ ~ ~

# Get Coords
execute at @s run function kfi:generation/spawn_coords

# Tellraw
tellraw @s ""
tellraw @a [{"text":"| ","color":"gray"},{"text":"Spawn Set ","color":"gold"}]