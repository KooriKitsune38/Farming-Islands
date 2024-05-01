#> kfi:coop/add_player

# If already in the list, don't paste
$execute store result score .success k.Values store result score .alreadyCollaborator coop if data storage kfi:values coopIslands[{UUID:$(ownerUUID)}].players[{UUID:$(tempUUID)}]

execute if score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You're already a collaborator!"}]
execute if score .success k.Values matches 1 run return 0

# Add player
    ## Create Template
    data modify storage kfi:values tempPlayer set value {UUID:0,Name:""}
    ## Set Sender UUID
    data modify storage kfi:values tempPlayer.UUID set from entity @s UUID[0]
    ## Set Name
    $data modify storage kfi:values tempPlayer.Name set from storage kfi:values players[{UUID:$(tempUUID)}].Name
    ## Add Player
    data modify storage kfi:values tempIsland.players append from storage kfi:values tempPlayer