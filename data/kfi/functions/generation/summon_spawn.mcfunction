#> kfi:generation/summon_spawn

# Forceload
forceload add ~ ~ ~ ~

# Summon
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[kfi.Spawn]}

# Tellraw
tellraw @s ""
tellraw @a [{"text":"| ","color":"gray"},{"text":"Spawn Set ","color":"gold"}]
tellraw @s ""