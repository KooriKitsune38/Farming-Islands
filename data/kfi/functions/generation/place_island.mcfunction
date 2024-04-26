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
execute at @s run function kfi:generation/get_coords

# Items
give @s cauldron
give @s warden_spawn_egg{display:{Name:'{"text":"Sprinkler","italic":false}'},EntityTag:{id:"block_display",Tags:[kf.Sprinkler,kf.RequiresPower,kf.LowUsage],block_state:{Name:"minecraft:cornflower",Properties:{}},teleport_duration:1,transformation:{translation:[-0.5f,1.5f,0.5f],left_rotation:[1f,0f,0f,0.399f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}}
give @s ghast_spawn_egg{display:{Name:'{"text":"Power Bank","italic":false}'},EntityTag:{id:"item_display",Rotation:[0f,0f],Tags:[kf.PowerBank,.temp]}}
give @s allay_spawn_egg{display:{Name:'{"text":"Water Mill","italic":false}'},EntityTag:{id:"block_display",Rotation:[0f,0f],Tags:[kf.WaterMill,.temp],block_state:{Name:"oak_trapdoor"},transformation:{translation:[-.2f,1f,-1f],left_rotation:[0f,0f,-0.703f,0.711f],scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f]}}}

# place structure
place template kfi:island ~-3 ~-5 ~-3

# Summon marker and copy uuid
execute store result score .tempUUID kfi.IslandUUIDs store result score @s kfi.IslandUUIDs run data get entity @s UUID[0]
execute summon marker run function kfi:generation/register_island

# Reposition Generator
execute as @e[type=marker,tag=kfi.Generator] at @s run function kfi:generation/forceload

# Unload chunk
forceload remove ~ ~ ~ ~

# Tellraw

tellraw @s [{"text":"| ","color":"gray"},{"text": "Island Generated, Enjoy!","color":"gold"}]