#> kfi:generation/trigger

# Check if spawn exists
execute if entity @e[type=marker,tag=kfi.Spawn] run function kfi:generation/continue_gen
execute unless entity @e[type=marker,tag=kfi.Spawn] run function kfi:generation/no_spawn

# Scoreboard
scoreboard players reset @s generate_island

# Advancement revoke
advancement revoke @s only kfi:triggered_island