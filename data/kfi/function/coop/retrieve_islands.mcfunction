#> kfi:coop/retrieve_islands

# Copy into a tempIslands
execute unless data storage kfi:values tempIslands run data modify storage kfi:values tempIslands set from storage kfi:values coopIslands

# If my island, return success
$execute if data storage kfi:values tempIslands[0].players[{UUID:$(tempUUID)}] run data modify storage kfi:values players[{UUID:$(tempUUID)}].coopIslands append from storage kfi:values tempIslands[0]

# Remove Index
data remove storage kfi:values tempIslands[0]

# Repeat
execute if data storage kfi:values tempIslands[0] run function kfi:coop/retrieve_islands with storage kfi:values