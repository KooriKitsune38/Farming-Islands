#> kfi:generation/get_coords

# Coords
    #> X
    execute store result score @s kfi.x run data get entity @s Pos[0]
    #> Y
    execute store result score @s kfi.y run data get entity @s Pos[1]
    #> Z
    execute store result score @s kfi.z run data get entity @s Pos[2]