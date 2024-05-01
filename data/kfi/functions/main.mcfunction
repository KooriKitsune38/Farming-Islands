#> kfi:main

# Selectors
    #> Everyone
    execute as @a run function kfi:selectors/_everyone
    #> Island
    execute as @e[type=marker,tag=kfi.Island] at @s run function kfi:islands/_main

# Skeletons
execute if score .customSkeletons k.Values matches 1 as @e[type=skeleton] run data modify entity @s DeathLootTable set value "kf:skeletons"

# Gamemode
execute at @e[type=marker,tag=kfi.Spawn] run gamemode adventure @a[distance=..30,gamemode=!spectator,gamemode=!creative]