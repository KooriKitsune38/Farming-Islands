#> kfi:home/tp_home

# Tp
$tp $(x) $(y) $(z)

# Spawnpoint
execute unless score .noSpawnPoint home matches 1 at @s run spawnpoint @s ~ ~ ~

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"aqua","text":"Welcome Aboard Captain."}]

# Gamemode survival
gamemode survival @s[gamemode=!creative]