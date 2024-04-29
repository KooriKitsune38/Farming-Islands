#> kfi:coop/deny_coop

# Tp Player
scoreboard players operation .tempUUID kfi.coopUUID = @s kfi.coopUUID
tag @s add .temp
execute as @a[tag=!.temp] if score @s kfi.coopUUID = .tempUUID kfi.coopUUID run function kfi:coop/reset_coop
tag @s remove .temp

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"Request Denied!"}]

# Scoreboard
scoreboard players reset @s kfi.coopUUID