#> kfi:tp/trigger

# Error log
execute if score @s tp matches 1.. if entity @s[tag=kfi.tpSender] run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You already have a pending request! type /trigger tp set -1 to cancel it!"}]

# Check type
    #> Receiving
    execute if score @s tp matches ..-1 if score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/receiving
    #> Sending
    execute if score @s tp matches 1.. unless score @s kfi.teleportTimer matches 0.. unless score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/sending

execute unless score .success k.Values matches 2 if score @s tp matches 1.. if entity @s[tag=!kfi.tpSender] unless score @s kfi.teleportUUID matches -2147483648..2147483647 run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You already have a pending request! type /trigger tp set -1 to cancel it!"}]

# Scoreboard
scoreboard players reset @s tp

# Advancement
advancement revoke @s only kfi:triggered_tp