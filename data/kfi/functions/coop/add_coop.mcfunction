#> kfi:coop/add_coop

## Sender Side
scoreboard players reset @s kfi.coopUUID
scoreboard players reset @s kfi.coopTimer
tag @s remove kfi.coopSender

## As sender
data modify storage kfi:values tempUUID set from entity @s UUID[0]

# Append data
## Sender
    ## Set Template
    data modify storage kfi:values tempIsland set value {Name:"",UUID:0,homePos:{x:0,y:0,z:0}}
    ## Set UUID
    data modify storage kfi:values tempIsland.UUID set from storage kfi:values ownerUUID
    ## Retrive Home
    $data modify storage kfi:values tempIsland.homePos set from storage kfi:values players[{UUID:$(ownerUUID)}].homePos
    ## Retrieve Name
    $data modify storage kfi:values tempIsland.Name set from storage kfi:values players[{UUID:$(ownerUUID)}].Name
    ## Retrieve Players
    $data modify storage kfi:values tempIsland.players set from storage kfi:values coopIslands[{UUID:$(ownerUUID)}].players
    ## Add to players
    function kfi:coop/add_player with storage kfi:values

# Tellraw
execute unless score .alreadyCollaborator coop matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You are now cooperating!"}]

## Receiver
    ## Set coopIslands to Receiver
    data modify storage kfi:values coopIslands append from storage kfi:values tempIsland
    
# Remove TempIsland
data remove storage kfi:values tempIsland
data remove storage kfi:values tempPlayer
