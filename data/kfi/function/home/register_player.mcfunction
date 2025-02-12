#> kfi:home/register_player

# Append data
data modify storage kfi:values tempPlayer set value {Name:"",UUID:0,homePos:{x:0,y:0,z:0}}
data modify storage kfi:values tempPlayer.UUID set from entity @s UUID[0]
loot spawn ~ ~ ~ loot kf:player_head
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s},distance=..2,limit=1] run function kfi:home/get_player_name
data modify storage kfi:values players append from storage kfi:values tempPlayer