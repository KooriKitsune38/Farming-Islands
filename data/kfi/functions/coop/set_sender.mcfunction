#> kfi:coop/set_sender

# Set coopIsland
$data modify storage kfi:values players[{UUID:$(tempUUID)}].coopIslands append from storage kfi:values tempPlayer

# Set Name
$data modify storage kfi:values coopTemplate.Name set from storage kfi:values players[{UUID:$(tempUUID)}].Name