#> kfi:id/check_availability

# If id already exists, return fail
execute store result storage kfi:values tempID int 1 run scoreboard players get @s my_id
function kfi:id/check_ids with storage kfi:values

# Data
    #> Retrieve UUID
    data modify storage kfi:values tempUUID set from entity @s UUID[0]

# Register
    #> If it isn't already registered
    execute if score .success k.Values matches 0 run function kfi:id/register_id with storage kfi:values
    #> If it is registered
    execute if score .success k.Values matches 1 run tellraw @s {"text": "This ID has been taken already!","color":"red"}