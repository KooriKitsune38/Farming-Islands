#> kfi:generation/forceload

# Forceload
execute positioned ~3000 ~ ~ run forceload add ~-10 ~-10 ~10 ~10

# Tag
tag @s add kfi.Reposition

# Schedule Move
scoreboard players set .noGeneration kfi.IslandUUIDs 1
schedule function kfi:generation/move_schedule 1s replace