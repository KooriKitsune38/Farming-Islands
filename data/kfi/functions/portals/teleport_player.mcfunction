#> kfi:portals/teleport_player

# Teleport
$tp @s $(x) $(y) $(z)

# Tellraw
$tellraw @s [{"text":"| "},{"text":"Consumed ","color":"red"},{"text":"$(requiredTickets)","color":"white"},{"text":" Ticket/s.","color":"red"}]

# Playsound
execute at @s run playsound block.portal.travel player @a ~ ~ ~ 1 2
execute at @s run particle cloud ~ ~2 ~ .2 .2 .2 0.15 10 normal

# Remove ticket
$clear @s name_tag{kfi.PortalTicket:1b} $(requiredTickets)