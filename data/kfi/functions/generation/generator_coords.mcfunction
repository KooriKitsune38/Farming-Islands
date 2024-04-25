#> kfi:generation/generator_coords

# Coords
    #> X
    execute store result storage kfi:values generatorPos.x int 1 run data get entity @s Pos[0]
    #> Y
    execute store result storage kfi:values generatorPos.y int 1 run data get entity @s Pos[1]
    #> Z
    execute store result storage kfi:values generatorPos.z int 1 run data get entity @s Pos[2]