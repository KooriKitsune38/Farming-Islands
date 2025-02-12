#> kfi:generation/place_island

# Player
    #> Teleport
    tp ~ ~ ~
    #> Gamemode survival
    gamemode survival @s[gamemode=!creative]
    #> Levitation
    effect give @s levitation 1 0 true
    #> Tag
    tag @s add kfi.HasIsland
    tag @s add kfi.placeIsland
    #> Set spawnpoint
    spawnpoint @s ~ ~ ~

# Copy location
execute at @s run function kfi:home/set_home

# Summon marker and copy uuid
execute store result score .tempUUID kfi.IslandUUIDs store result score @s kfi.IslandUUIDs run data get entity @s UUID[0]
execute summon marker run function kfi:generation/register_island

# Scoreboard
scoreboard players set .noGeneration kfi.IslandUUIDs 1

# Schedule
schedule function kfi:generation/get_player_position 10t replace