#> kfi:islands/_players

# Unless area, tp back
execute positioned ~10 ~ ~10 unless entity @s[dx=280,dy=500,dz=280] run tp @s @e[type=marker,tag=kfi.Island,tag=.temp,limit=1]

# Unless id, tp to spawn
execute unless score @s kfi.IDs matches -2147483648..2147483647 unless score @s kfi.IslandUUIDs = .tempUUID kfi.IslandUUIDs run function kfi:islands/no_id

# Adventure
execute if score @s[gamemode=adventure] kfi.IslandUUIDs = .tempUUID kfi.IslandUUIDs run gamemode survival @s