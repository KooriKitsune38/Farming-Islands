#> kfi:main

# Selectors
    #> Everyone
    execute as @a run function kfi:selectors/_everyone
    #> Island
    execute as @e[type=marker,tag=kfi.Island] at @s run function kfi:islands/_main
    #> Water Springs
    execute at @e[type=marker,tag=kfi.WaterSpring] as @a[distance=..20,nbt=!{Inventory:[{id:"minecraft:water_bucket"}]},nbt={Inventory:[{id:"minecraft:bucket"}]}] run function kfi:refill_bucket

# Skeletons
execute if score .customSkeletons k.Values matches 1 as @e[type=skeleton] run data modify entity @s DeathLootTable set value "kf:skeletons"

# Gamemode
execute at @e[type=marker,tag=kfi.Spawn] run gamemode adventure @a[distance=..30,gamemode=!spectator,gamemode=!creative]