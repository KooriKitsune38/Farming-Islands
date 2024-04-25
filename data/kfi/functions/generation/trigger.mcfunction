#> kfi:generation/trigger

# Check if spawn exists
execute if score .noGeneration kfi.IslandUUIDs matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"Error! please try again."}]
execute if entity @e[type=marker,tag=kfi.Spawn] unless score .noGeneration kfi.IslandUUIDs matches 1 run function kfi:generation/continue_gen
execute unless entity @e[type=marker,tag=kfi.Spawn] run function kfi:generation/no_spawn

# Scoreboard
scoreboard players reset @s generate_island

# Advancement revoke
advancement revoke @s only kfi:triggered_island