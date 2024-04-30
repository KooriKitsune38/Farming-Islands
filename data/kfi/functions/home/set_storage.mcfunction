#> kfi:home/set_storage

# If player doesn't exist, add it
$execute unless data storage kfi:values players[{UUID:$(tempUUID)}] run function kfi:home/register_player

# If old coords convert
execute store success score .success k.Values if score @s kfi.x matches -2147483648..2147483647
$execute if score .success k.Values matches 1 run function kfi:home/convert_coords {tempUUID:$(tempUUID)}
execute if score .success k.Values matches 1 run return 1

# Get from pos
    ## X
    $execute store result storage kfi:values players[{UUID:$(tempUUID)}].homePos.x double 0.1 run data get entity @s Pos[0] 10
    ## Y
    $execute store result storage kfi:values players[{UUID:$(tempUUID)}].homePos.y double 0.1 run data get entity @s Pos[1] 10
    ## Z
    $execute store result storage kfi:values players[{UUID:$(tempUUID)}].homePos.z double 0.1 run data get entity @s Pos[2] 10

# Set to collab island
$data modify storage kfi:values coopIslands[{UUID:$(tempUUID)}].homePos set from storage kfi:values players[{UUID:$(tempUUID)}].homePos