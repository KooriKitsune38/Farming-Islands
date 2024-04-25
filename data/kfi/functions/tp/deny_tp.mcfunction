#> kfi:tp/deny_tp

# Tp Player
scoreboard players operation .tempUUID kfi.teleportUUID = @s kfi.teleportUUID
tag @s add .temp
execute as @a[tag=!.temp] if score @s kfi.teleportUUID = .tempUUID kfi.teleportUUID run function kfi:tp/reset_tp
tag @s remove .temp

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"Request Denied!"}]

# Scoreboard
scoreboard players reset @s kfi.teleportUUID