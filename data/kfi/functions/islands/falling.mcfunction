#> kfi:islands/falling

# Slow fall
effect give @s slow_falling 1 0 true

# If has a house
execute store success score .success k.Values if entity @s[tag=kfi.HasIsland] run trigger home

# If no house, trigger spawn
execute unless score .success k.Values matches 1 run trigger spawn