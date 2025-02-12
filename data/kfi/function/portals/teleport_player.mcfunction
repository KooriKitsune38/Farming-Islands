#> kfi:portals/teleport_player

# Teleport
$tp @s $(x) $(y) $(z) $(x_rotation) $(y_rotation)

# Tellraw
execute if score .portalTickets k.Values matches 1.. run tellraw @s [{"text":"| "},{"text":"Consumed ","color":"red"},{"score":{"name":".portalTickets","objective":"k.Values"},"color":"white"},{"text":" Ticket/s.","color":"red"}]

# Playsound
execute at @s run playsound block.portal.travel player @a ~ ~ ~ 0.2 2
execute at @s run particle cloud ~ ~2 ~ .2 .2 .2 0.15 10 normal

# Remove ticket
$clear @s name_tag{kfi.PortalTicket:1b} $(requiredTickets)