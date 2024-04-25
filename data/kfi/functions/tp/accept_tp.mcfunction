#> kfi:tp/accept_tp

# Tp Player
scoreboard players operation .tempUUID kfi.teleportUUID = @s kfi.teleportUUID
tag @s add .temp
execute as @a[tag=!.temp] if score @s kfi.teleportUUID = .tempUUID kfi.teleportUUID run function kfi:tp/teleport
tag @s remove .temp

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Request Accepted"}]

# Scoreboard
scoreboard players reset @s kfi.teleportUUID