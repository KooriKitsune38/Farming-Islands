#> kfi:coop/receiver_home

# Copy homePos
$data modify storage kfi:values tempPlayer.homePos set from storage kfi:values players[{UUID:$(receiverUUID)}].homePos