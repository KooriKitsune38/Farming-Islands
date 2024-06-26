#> kfi:generation/place_island

# Player
    #> Teleport
    tp ~ ~ ~
    #> Gamemode survival
    gamemode survival @s[gamemode=!creative]
    #> Tag
    tag @s add kfi.HasIsland
    #> Set spawnpoint
    spawnpoint @s ~ ~ ~

# Copy location
execute at @s run function kfi:home/set_home

# place structure
place template kfi:island ~-3 ~-5 ~-3

# Summon marker and copy uuid
execute store result score .tempUUID kfi.IslandUUIDs store result score @s kfi.IslandUUIDs run data get entity @s UUID[0]
execute summon marker run function kfi:generation/register_island

# Reposition Generator
execute as @e[type=marker,tag=kfi.Generator] at @s run function kfi:generation/forceload

# Unload chunk
forceload remove ~-10 ~-10 ~10 ~10

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"text": "Island Generated, Enjoy!","color":"gold"}]