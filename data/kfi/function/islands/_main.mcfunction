#> kfi:islands/_main

# Take nearby players
tag @s add .temp
scoreboard players operation .tempUUID kfi.IslandUUIDs = @s kfi.IslandUUIDs 
execute positioned ~-150 -100 ~-150 as @a[dx=300,dy=500,dz=300] run function kfi:islands/_players
tag @s remove .temp