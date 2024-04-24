#> kfi:home/set_trigger

# If no home
execute unless entity @s[tag=kfi.HasIsland] run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have an island!"}]

# Check Island
scoreboard players reset .success k.Values
    #> Check Nearby Island
    scoreboard players operation .tempUUID kfi.IslandUUIDs = @s kfi.IslandUUIDs
    execute positioned ~-200 0 ~-200 as @e[type=marker,tag=kfi.Island,dx=400,dy=400,dz=400] if score @s kfi.IslandUUIDs = .tempUUID kfi.IslandUUIDs run scoreboard players set .success k.Values 1
    #> Island nearby
    execute if score .success k.Values matches 1 run function kfi:home/set_home
    execute unless score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You must be in your island to set your home..."}]

# Scoreboard
scoreboard players reset @s sethome

# Advancement
advancement revoke @s only kfi:triggered_sethome