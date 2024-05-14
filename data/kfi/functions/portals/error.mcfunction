#> kfi:portals/error

# Tellraw
tellraw @s[tag=!kfi.portalError] [{"text":"| ","color":"gray"},{"text":"You need ","color":"red"},{"score":{"name":".portalTickets","objective":"k.Values"},"color":"white"},{"text":" ticket/s to enter.","color":"red"}]

# Sound
playsound entity.player.burp player @s[tag=!kfi.portalError] ~ ~ ~ 1 1

# Tag
tag @s add kfi.portalError