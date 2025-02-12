#> kfi:coop/list_collaborators

# Reset success
scoreboard players reset .success k.Values

# Tellraw
tellraw @s ["",{"text":"-------------------------------------------------","color":"gray"},{"text":"\n"},{"text":"Your Collaborators: (Click to remove)","color":"aqua"}]
function kfi:coop/collaborators_tellraw with storage kfi:values
    #> No Player
    execute unless score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have collaborators in your island."}]
tellraw @s {"text":"-------------------------------------------------","color":"gray"}

# Remove
data remove storage kfi:values tempPlayers