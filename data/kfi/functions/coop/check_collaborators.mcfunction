#> kfi:coop/check_collaborators

# Check if exists
$execute store result score .success k.Values if data storage kfi:values coopIslands[{UUID:$(ownerUUID)}].players[{UUID:$(tempUUID)}]

# If positive, remove
execute if score .success k.Values matches 1 run function kfi:coop/remove_player with storage kfi:values

# Error
#> No Player
    execute unless score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"No Player Found!"}]