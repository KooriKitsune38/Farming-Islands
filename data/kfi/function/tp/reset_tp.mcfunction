#> kfi:tp/reset_tp

# Tag
tag @s remove kfi.tpSender

# Scoreboard
scoreboard players operation .tempUUID kfi.teleportUUID = @s kfi.teleportUUID
execute as @a if score @s kfi.teleportUUID = .tempUUID kfi.teleportUUID run scoreboard players reset @s kfi.teleportUUID
scoreboard players reset @s kfi.teleportTimer

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"Teleport request cancelled."}]