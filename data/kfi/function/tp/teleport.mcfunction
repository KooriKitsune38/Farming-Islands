#> kfi:tp/teleport

# Tp ~ ~ ~ 
tp @s ~ ~ ~ ~ ~

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"Teleporting..."}]

# Tag
tag @s remove kfi.tpSender

# Gamemode
gamemode adventure @s[gamemode=!spectator,gamemode=!creative]
execute if score .tpSurvival k.Values matches 1 run gamemode survival @s[gamemode=!creative]

# Scoreboard
scoreboard players reset @s kfi.teleportUUID
scoreboard players reset @s kfi.teleportTimer
scoreboard players reset .tpSurvival k.Values