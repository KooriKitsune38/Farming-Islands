#> kfi:coop/list_islands

# Reset success
scoreboard players reset .success k.Values

# Retrieve all coop islands
$data remove storage kfi:values players[{UUID:$(tempUUID)}].coopIslands
function kfi:coop/retrieve_islands with storage kfi:values
data remove storage kfi:values tempIslands

# Scoreboard
    #> Create Scoreboard
    scoreboard objectives add .temp dummy
    #> Add 0
    scoreboard players set .temp .temp 1
    scoreboard players set .-1 .temp -1
# Tellraw
tellraw @s ["",{"text":"-------------------------------------------------","color":"gray"},{"text":"\n"},{"text":"You're Currently Cooperating in these islands: (Click to teleport)","color":"aqua"}]
function kfi:coop/island_tellraw with storage kfi:values
    #> If no Island
    execute unless score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You aren't collaborating in any island."}]
tellraw @s {"text":"-------------------------------------------------","color":"gray"}

# Remove
data remove storage kfi:values tempIslands
scoreboard objectives remove .temp