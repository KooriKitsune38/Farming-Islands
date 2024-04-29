#> kfi:home/trigger

# If no home
execute unless entity @s[tag=kfi.HasIsland] run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have an island!"}]

# Tp
    #> Get UUID
    execute if entity @s[tag=kfi.HasIsland] run function kfi:home/pre_tp

# Scoreboard
scoreboard players reset @s home

# Advancement
advancement revoke @s only kfi:triggered_home