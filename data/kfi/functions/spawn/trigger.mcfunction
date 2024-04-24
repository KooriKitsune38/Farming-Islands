#> kfi:spawn/trigger

# If no spawn
execute unless entity @e[type=marker,tag=kfi.Spawn] run function kfi:generation/no_spawn

# Tp to spawn
execute if entity @e[type=marker,tag=kfi.Spawn] run function kfi:spawn/tp_spawn

# Scoreboard
scoreboard players reset @s spawn

# Advancement
advancement revoke @s only kfi:triggered_spawn