#> kfi:home/trigger

# If no home
execute unless entity @s[tag=kfi.HasIsland] run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have an island!"}]

# Tp
    #> Retrieve UUID
    data modify storage kfi:values tempUUID set from entity @s UUID[0]
    #> If negative, tp
    execute if score @s home matches ..-1 run function kfi:coop/get_index with storage kfi:values
    #> If 2, list Coop Islands
    execute if score @s home matches 2.. run function kfi:coop/retrieve_coops with storage kfi:values
    #> Get UUID
    execute if entity @s[tag=kfi.HasIsland] if score @s home matches 1 run function kfi:home/get_coords with storage kfi:values
    #> If more than 1.. Retrive Homes

# Scoreboard
scoreboard players reset @s home

# Advancement
advancement revoke @s only kfi:triggered_home