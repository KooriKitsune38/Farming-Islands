#> kfi:reload

# Scoreboard
    #> Objectives
    scoreboard objectives add my_id trigger
    scoreboard objectives add spawn trigger
    scoreboard objectives add home trigger
    scoreboard objectives add generate_island trigger
    scoreboard objectives add kfi.IDs dummy
    scoreboard objectives add kfi.x dummy
    scoreboard objectives add kfi.y dummy
    scoreboard objectives add kfi.z dummy
    scoreboard objectives add kfi.IslandUUIDs dummy
    scoreboard objectives add k.Values dummy

# Storages
execute unless data storage kfi:values registeredIDs run data merge storage kfi:values {registeredIDs:[{id:0}],tempData:{id:0},tempID:0,tempPos:{x:0,y:0,z:0}}