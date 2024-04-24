#> kfi:generation/summon_generator

# Tellraw
tellraw @s ""
tellraw @s [{"text":"| ","color":"gray"},{"text": "Summoning Generator. (Please retry in a second)","color":"red"}]

# Forceload
forceload add -50000 -50000 -50000 -50000

# Summon marker
summon marker ~ ~ ~ {Tags:[kfi.Generator]}

# Schedule 
schedule function kfi:generation/check_generator 1s