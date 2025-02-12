#> kfi:coop/reset_coop

# Tag
tag @s remove kfi.coopSender

# Scoreboard
scoreboard players operation .tempUUID kfi.coopUUID = @s kfi.coopUUID
execute as @a if score @s kfi.coopUUID = .tempUUID kfi.coopUUID run scoreboard players reset @s kfi.coopUUID
scoreboard players reset @s kfi.coopTimer

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"Coop request cancelled."}]