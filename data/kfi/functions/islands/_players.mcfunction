#> kfi:islands/_players

# Unless area, tp back
execute positioned ~10 ~ ~10 unless entity @s[dx=380,dz=380] run tp @s @e[type=marker,tag=kfi.Island,tag=.temp,limit=1]