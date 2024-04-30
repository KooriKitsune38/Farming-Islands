#> kfi:coop/remove_player

# Tellraw
$tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Successfully removed "},{"color":"aqua","nbt":"coopIslands[{UUID:$(ownerUUID)}].players[{UUID:$(tempUUID)}].Name","storage":"kfi:values"}]

# Remove data
$data remove storage kfi:values coopIslands[{UUID:$(ownerUUID)}].players[{UUID:$(tempUUID)}]