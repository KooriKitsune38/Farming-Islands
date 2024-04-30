#> kfi:coop/list_islands

# Scoreboard
    #> Create Scoreboard
    scoreboard objectives add .temp dummy
    #> Add 0
    scoreboard players set .temp .temp 1
    scoreboard players set .-1 .temp -1

# Tellraw
tellraw @s ["",{"text":"-------------------------------------------------","color":"gray"},{"text":"\n"},{"text":"You're Currently Cooperating in these islands: (Click to teleport)","color":"white"}]
function kfi:coop/island_tellraw with storage kfi:values
tellraw @s {"text":"-------------------------------------------------","color":"gray"}

# Remove
data remove storage kfi:values tempIslands
scoreboard objectives remove .temp