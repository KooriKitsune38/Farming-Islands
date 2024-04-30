#> kfi:home/get_player_name

# Modify Storage
data modify storage kfi:values tempPlayer.Name set from entity @s Item.tag.SkullOwner.Name

# Kill
kill @s