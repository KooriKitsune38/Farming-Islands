#> kfi:coop/accept_coop

# Accept Player
scoreboard players operation .tempUUID kfi.coopUUID = @s kfi.coopUUID
data modify storage kfi:values tempUUID set from entity @s UUID[0]
tag @s add .temp
execute if score .success k.Values matches 1 as @a[tag=!.temp] if score @s kfi.coopUUID = .tempUUID kfi.coopUUID run function kfi:coop/add_coop with storage kfi:values
tag @s remove .temp

# Tellraw
execute if score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Request Accepted"}]

# Scoreboard
execute if score .success k.Values matches 1 run scoreboard players reset @s kfi.coopUUID