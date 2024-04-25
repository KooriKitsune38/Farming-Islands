#> kfi:home/set_trigger

# If no home
execute unless entity @s[tag=kfi.HasIsland] run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have an island!"}]

# Check Island
function kfi:home/check_island
execute if score .success k.Values matches 1 run function kfi:home/set_home

# Scoreboard
scoreboard players reset @s sethome

# Advancement
advancement revoke @s only kfi:triggered_sethome