#> kfi:generation/summon_generator

# Tellraw

tellraw @s [{"text":"| ","color":"gray"},{"text": "Summoning Generator. (Please retry in a second)","color":"red"}]

# Forceload
execute positioned -50000 60 -50000 run forceload add ~-10 ~-10 ~10 ~10

# Summon marker
summon marker ~ ~ ~ {Tags:[kfi.Generator]}
execute as @e[type=marker,tag=kfi.Generator] at @s run function kfi:generation/generator_coords

# Schedule 
schedule function kfi:generation/check_generator 1s replace