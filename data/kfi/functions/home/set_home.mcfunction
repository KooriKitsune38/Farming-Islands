#> kfi:home/set_home

# Get Coords
    #> Retrieve UUID
    data modify storage kfi:values tempUUID set from entity @s UUID[0]
    #> Set Storage
    function kfi:home/set_storage with storage kfi:values

# Set Spawnpoint
spawnpoint @s ~ ~ ~

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Home Set"}]