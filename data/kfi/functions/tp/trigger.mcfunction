#> kfi:tp/trigger

# Error log
execute if score @s tp matches 1.. if entity @s[tag=kfi.tpSender] run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You already have a pending request! type /trigger tp set -1 to cancel it!"}]

execute unless score .success k.Values matches 2 if score @s tp matches 1.. if entity @s[tag=!kfi.tpSender] if score @s kfi.teleportUUID matches -2147483648..2147483647 run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You already have a pending request! type /trigger tp set -1 to cancel it!"}]

# Check type
    #> Receiving
    execute unless entity @s[gamemode=spectator] if score @s tp matches ..-1 if score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/receiving
    #> Sending
    execute unless entity @s[gamemode=spectator] if score @s tp matches 1.. unless score @s kfi.teleportTimer matches 0.. unless score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/sending

# If Spectator
tellraw @s[gamemode=spectator] [{"text":"| ","color":"gray"},{"color":"red","text":"You can't teleport in spectator!"}]

# Scoreboard
scoreboard players reset @s tp

# Advancement
advancement revoke @s only kfi:triggered_tp