#> kfi:coop/island_tellraw

# Copy into a tempIslands
$execute unless data storage kfi:values tempIslands run data modify storage kfi:values tempIslands set from storage kfi:values players[{UUID:$(tempUUID)}].coopIslands

# Tellraw
    #> Copy index and trigger
    scoreboard players operation .trigger .temp = .temp .temp
    scoreboard players operation .trigger .temp *= .-1 .temp
    execute store result storage kfi:values tempIslands[0].trigger int 1 run scoreboard players get .index .temp
    execute store result storage kfi:values tempIslands[0].index int 1 run scoreboard players get .temp .temp
    #> Paste tellraw
    function kfi:coop/paste_island with storage kfi:values tempIslands[0]

# Add 1 to temp
scoreboard players add .temp .temp 1

# Remove Index
data remove storage kfi:values tempIslands[0]

# Repeat
execute if data storage kfi:values tempIslands[0] run function kfi:coop/island_tellraw