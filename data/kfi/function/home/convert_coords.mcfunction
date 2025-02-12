#> kfi:home/convert_coords

# Coords
    ## X
    $execute store result storage kfi:values players[{UUID:$(tempUUID)}].homePos.x double 1 run scoreboard players get @s kfi.x
    ## Y
    $execute store result storage kfi:values players[{UUID:$(tempUUID)}].homePos.y double 1 run scoreboard players get @s kfi.y
    ## Z
    $execute store result storage kfi:values players[{UUID:$(tempUUID)}].homePos.z double 1 run scoreboard players get @s kfi.z

# Reset
    #> X
    scoreboard players reset @s kfi.x
    #> Y
    scoreboard players reset @s kfi.y
    #> Z
    scoreboard players reset @s kfi.z