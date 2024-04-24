#> kfi:home/tp_home

# Tp
$tp $(x) $(y) $(z)

$execute at @s run spreadplayers ~ ~ 0 1 under $(y) false @s

# Tellraw
tellraw @s ""
tellraw @s [{"text":"| ","color":"gray"},{"color":"aqua","text":"Welcome Aboard Captain."}]

# Gamemode survival
gamemode survival @s[gamemode=!creative]