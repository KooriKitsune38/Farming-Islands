#> kfi:id/check_availability

# If id already exists, return fail
execute store result storage kfi:values tempID int 1 run scoreboard players get @s my_id
function kfi:id/check_ids with storage kfi:values

# Register
    #> If it isn't already registered
    execute if score .success k.Values matches 0 run function kfi:id/register_id
    #> If it is registered
    execute if score .success k.Values matches 1 run tellraw @s {"text": "This ID has been taken already!","color":"red"}