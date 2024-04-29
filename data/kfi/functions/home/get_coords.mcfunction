#> kfi:home/get_coords

# Set pos
$data modify storage kfi:values tempPos set from storage kfi:values players[{UUID:$(tempUUID)}].homePos

# Tp Home
function kfi:home/tp_home with storage kfi:values tempPos