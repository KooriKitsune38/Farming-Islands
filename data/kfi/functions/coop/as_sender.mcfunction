#> kfi:coop/as_sender

# Scoreboard
scoreboard players set @s kfi.coopTimer 2400

# Tag
tag @s add kfi.coopSender

# Tellraw
tellraw @s [{"text":"| ","color":"gray"},{"text":"Teleport coop sent.","color":"gold"}]
