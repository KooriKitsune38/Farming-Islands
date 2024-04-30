#> kfi:generation/continue_gen

# Generate at generator
execute if entity @e[type=marker,tag=kfi.Generator] at @e[type=marker,tag=kfi.Generator] run function kfi:generation/place_island

# If no generator summon it
execute unless score .generatorSummoned kfi.IslandUUIDs matches 1 unless entity @e[type=marker,tag=kfi.Generator] positioned -50000 60 -50000 run function kfi:generation/summon_generator