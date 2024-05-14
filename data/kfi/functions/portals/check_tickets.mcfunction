#> kfi:portals/check_tickets

# Check
    #> Player
    execute store result score .playerTickets k.Values run clear @s name_tag{kfi.PortalTicket:1b} 0
    #> Check
    execute store result score .success k.Values if score .playerTickets k.Values >= .portalTickets k.Values

# If equals or more, continue
execute if score .success k.Values matches 1 run function kfi:portals/teleport_player with entity @e[tag=.temp,limit=1,sort=nearest,distance=..20,type=marker] data.portalLocation

# Otherwise error
execute unless score .success k.Values matches 1 run function kfi:portals/error

# Tag
tag @s add .temp