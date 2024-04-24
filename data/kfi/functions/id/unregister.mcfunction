#> kfi:id/unregister

# Remove from storage
    #> Retrieve ID
    execute store result storage kfi:values tempID int 1 run scoreboard players get @s kfi.IDs
    #> Remove from storage
    function kfi:id/remove_from_storage with storage kfi:values
    
# Reset kfi.IDs
scoreboard players reset @s kfi.IDs

# Tellraw
tellraw @s ""
tellraw @s [{"text":"| ","color":"gray"},{"text":"Your ID has been unregistered.","color":"gold"}]
tellraw @s ""