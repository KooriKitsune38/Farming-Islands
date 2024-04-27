#> kfi:tp/accept_tp_survival

# Check Island
function kfi:home/check_island

# Tp Player
scoreboard players set .tpSurvival k.Values 1
scoreboard players operation .tempUUID kfi.teleportUUID = @s kfi.teleportUUID
tag @s add .temp
execute if score .success k.Values matches 1 as @a[tag=!.temp] if score @s kfi.teleportUUID = .tempUUID kfi.teleportUUID run function kfi:tp/teleport
tag @s remove .temp
scoreboard players reset .tpSurvival k.Values

# Tellraw
execute if score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"gold","text":"Request Accepted"}]

# Scoreboard
execute if score .success k.Values matches 1 run scoreboard players reset @s kfi.teleportUUID