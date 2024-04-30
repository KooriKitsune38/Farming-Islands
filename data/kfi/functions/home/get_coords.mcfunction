#> kfi:home/get_coords

# Reset Pos
data modify storage kfi:values tempPos set value {}

# Set pos
$data modify storage kfi:values tempPos set from storage kfi:values players[{UUID:$(tempUUID)}].homePos

# Set spawnpoint
scoreboard players set .noSpawnpoint home 0

# Tp Home
function kfi:home/tp_home with storage kfi:values tempPos