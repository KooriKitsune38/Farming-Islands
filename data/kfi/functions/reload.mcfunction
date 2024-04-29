#> kfi:reload

# Scoreboard
    #> Objectives
    scoreboard objectives add my_id trigger
    scoreboard objectives add spawn trigger
    scoreboard objectives add home trigger
    scoreboard objectives add sethome trigger
    scoreboard objectives add tp trigger
    scoreboard objectives add coop trigger
    scoreboard objectives add generate_island trigger
    scoreboard objectives add kfi.IDs dummy
    scoreboard objectives add kfi.IslandUUIDs dummy
    scoreboard objectives add kfi.teleportTimer dummy
    scoreboard objectives add kfi.teleportUUID dummy
    scoreboard objectives add kfi.coopTimer dummy
    scoreboard objectives add kfi.coopUUID dummy
    scoreboard objectives add k.Values dummy
    #> Players
    scoreboard players set .1 k.Values 1
    scoreboard players add .customSkeletons k.Values 0

# Storages
execute unless data storage kfi:values registeredIDs run data merge storage kfi:values {registeredIDs:[{id:0}],tempData:{id:0},tempUUID:0,tempID:0,tempPos:{x:0,y:0,z:0},generatorPos:{x:0,y:0,z:0},spawnPos:{x:0,y:0,z:0},players:[]}

# Forceload chunks
    #> Generator
    function kfi:generation/forceload_chunks with storage kfi:values generatorPos
    #> Spawn
    function kfi:generation/forceload_chunks with storage kfi:values spawnPos