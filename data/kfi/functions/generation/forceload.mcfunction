#> kfi:generation/forceload

# Forceload
forceload add ~3000 ~ ~3000 ~

# Tag
tag @s add kfi.Reposition

# Schedule Move
scoreboard players set .noGeneration kfi.IslandUUIDs 1
schedule function kfi:generation/move_schedule 1s