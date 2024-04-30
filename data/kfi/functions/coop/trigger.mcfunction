#> kfi:coop/trigger

# Error log
    #> No ID
    execute unless score @s kfi.IDs matches -2147483648..2147483647 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You must have an ID!"}]
    #> If sender with already a request
    execute if score @s coop matches 1.. if entity @s[tag=kfi.coopSender] run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You already have a pending request! type /trigger coop set -1 to cancel it!"}]
    #> If Receiver with request
    execute unless score .success k.Values matches 2 if score @s coop matches 1.. if entity @s[tag=!kfi.coopSender] if score @s kfi.teleportUUID matches -2147483648..2147483647 run tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You already have a pending request! type /trigger coop set -2 to cancel it!"}]

# Check type
    #> Sending
    execute if score @s coop matches 1.. unless score @s kfi.coopTimer matches 0.. unless score @s kfi.teleportUUID matches -2147483648..2147483647 if score @s kfi.IDs matches -2147483648..2147483647 run function kfi:coop/sending
    #> No Island Error
    execute unless score @s coop matches ..-1 unless entity @s[tag=kfi.coopSender,tag=kfi.HasIsland] run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have an island!"}]
    #> Receiving
    execute if score @s coop matches ..-1 if score @s kfi.coopUUID matches -2147483648..2147483647 run function kfi:coop/receiving


# Scoreboard
scoreboard players reset @s coop

# Advancement
advancement revoke @s only kfi:triggered_coop