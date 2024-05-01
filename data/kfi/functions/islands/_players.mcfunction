#> kfi:islands/_players

# Unless area, tp back
execute positioned ~10 ~ ~10 unless entity @s[dx=380,dz=380] run tp @s @e[type=marker,tag=kfi.Island,tag=.temp,limit=1]

# Unless id, tp to spawn
execute unless score @s kfi.IDs matches -2147483648..2147483647 unless score @s kfi.IslandUUIDs = .tempUUID kfi.IslandUUIDs run function kfi:islands/no_id