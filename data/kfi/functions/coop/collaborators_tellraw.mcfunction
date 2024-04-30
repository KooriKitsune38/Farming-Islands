#> kfi:coop/collaborators_tellraw

# Copy into a tempPlayers
$execute unless data storage kfi:values tempPlayers run data modify storage kfi:values tempPlayers set from storage kfi:values coopIslands[{UUID:$(ownerUUID)}].players

# Copy UUID into a temp
data modify storage kfi:values tempUUID set from storage kfi:values tempPlayers[0].UUID
# Tellraw
$execute unless data storage kfi:values {tempUUID:$(ownerUUID)} run function kfi:coop/paste_player with storage kfi:values tempPlayers[0]

# Remove Index
data remove storage kfi:values tempPlayers[0]

# Repeat
execute if data storage kfi:values tempPlayers[0] run function kfi:coop/collaborators_tellraw with storage kfi:values