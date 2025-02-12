#> kfi:generation/spawn_coords

# Coords
    #> X
    execute store result storage kfi:values spawnPos.x int 1 run data get entity @s Pos[0]
    #> Y
    execute store result storage kfi:values spawnPos.y int 1 run data get entity @s Pos[1]
    #> Z
    execute store result storage kfi:values spawnPos.z int 1 run data get entity @s Pos[2]