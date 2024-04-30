#> kfi:coop/retrieve_coops

# If any islands, return success
$execute store success score .success k.Values if data storage kfi:values players[{UUID:$(tempUUID)}].coopIslands[0]

# Tellraw
execute if score .success k.Values matches 1 run function kfi:coop/list_islands

# If no Island
execute unless score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You aren't collaborating in any island."}]