#> kfi:generation/summon_spawn

# Kill
execute as @e[type=marker,tag=kfi.Spawn] at @s run function kfi:generation/kill_spawn

# Forceload
forceload add ~-10 ~-10 ~10 ~10

# Summon
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[kfi.Spawn]}
execute rotated as @s as @e[type=marker,tag=kfi.Spawn] positioned as @s run tp @s ~ ~ ~ ~ ~

# Get Coords
execute at @s run function kfi:generation/spawn_coords

# Tellraw

tellraw @a [{"text":"| ","color":"gray"},{"text":"Spawn Set ","color":"gold"}]