#> kfi:coop/add_coop

# Append data
data modify storage kfi:values tempPlayer set value {UUID:0,homePos:{x:0,y:0,z:0}}
execute store result storage kfi:values receiverUUID int 1 run data modify storage kfi:values tempPlayer.UUID set from entity @p[tag=.temp] UUID[0]
function kfi:coop/receiver_home with storage kfi:values
$data modify storage kfi:values players[{UUID:$(tempUUID)}].coopIslands append from storage kfi:values tempPlayer