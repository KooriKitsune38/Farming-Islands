#> kfi:spawn/tp_spawn

# Tp
tp @s @e[type=marker,tag=kfi.Spawn,limit=1]

# Tellraw
tellraw @s ""
tellraw @s [{"text":"| ","color":"gray"},{"color":"aqua","text":"Woooosh!"}]

# Gamemode adventure
gamemode adventure @s[gamemode=!creative]