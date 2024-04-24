#> kfi:home/set_home

# Get Coords
function kfi:generation/get_coords

# Set Spawnpoint
spawnpoint @s ~ ~ ~

# Tellraw
tellraw @s ""
tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Home Set"}]