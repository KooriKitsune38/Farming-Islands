#> kfi:tp/as_sender

# Scoreboard
scoreboard players set @s kfi.teleportTimer 2400

# Tag
tag @s add kfi.tpSender

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"text":"Teleport request sent.","color":"gold"}]
