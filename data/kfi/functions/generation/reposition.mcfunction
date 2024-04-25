#> kfi:generation/reposition

# Tp
tp ~3000 ~ ~
execute if entity @s[tag=kfi.NewRow] run tp -50000 ~ ~5000

# Tag
tag @s remove kfi.Reposition
tag @s remove kfi.NewRow
scoreboard players set .noGeneration kfi.IslandUUIDs 0

# Retrieve Position
execute at @s store result score .z k.Values run data get entity @s Pos[0]
execute if score .z k.Values matches 50000.. run forceload add -50000 ~5000
execute if score .z k.Values matches 50000.. run tag @s add kfi.NewRow

# Unload
forceload remove ~ ~ ~ ~

# Get Coords
execute at @s run function kfi:generation/generator_coords