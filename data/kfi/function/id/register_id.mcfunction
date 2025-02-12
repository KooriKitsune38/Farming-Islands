#> kfi:id/register_id

# If player doesn't exist, add it
$execute unless data storage kfi:values players[{UUID:$(tempUUID)}] run function kfi:home/register_player

# Append to ids
    #> Create a temp data
    execute store result storage kfi:values tempData.id int 1 run scoreboard players get @s my_id
    #> Append the data
    data modify storage kfi:values registeredIDs append from storage kfi:values tempData

# Copy into kfi.IDs
scoreboard players operation @s kfi.IDs = @s my_id

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"text":"Your ID has been registered as: ","color":"gold"},{"score":{"name": "@s","objective": "kfi.IDs"},"color":"#DAA06D"}]