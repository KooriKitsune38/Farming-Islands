#> kfi:coop/accept_coop

# Accept Player
scoreboard players operation .tempUUID kfi.coopUUID = @s kfi.coopUUID
data modify storage kfi:values recevierUUID set from entity @s UUID[0]
tag @s add .temp
execute as @a[tag=!.temp] if score @s kfi.coopUUID = .tempUUID kfi.coopUUID run function kfi:coop/add_coop with storage kfi:values
tag @s remove .temp

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Request Accepted"}]

# Scoreboard
scoreboard players reset @s kfi.coopUUID