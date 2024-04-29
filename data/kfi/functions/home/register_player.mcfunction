#> kfi:home/register_player

# Append data
data modify storage kfi:values tempPlayer set value {UUID:0,homePos:{x:0,y:0,z:0},coopIslands:[]}
data modify storage kfi:values tempPlayer.UUID set from entity @s UUID[0]
data modify storage kfi:values players append from storage kfi:values tempPlayer