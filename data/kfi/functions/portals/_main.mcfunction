#> kfi:portals/_main

# Rotate
data modify entity @s Rotation set from entity @e[type=block_display,distance=..1,tag=kfi.PortalDisplay,limit=1,sort=nearest] Rotation

# Particles
particle end_rod ~ ~ ~ 1.5 1.5 1.5 0 1 normal 

# Retrieve Tickets
execute store result score .portalTickets k.Values run data get entity @s data.portalLocation.requiredTickets

# Teleport Players
tag @s add .temp
execute positioned ~ ~-2.5 ~ align xz as @a[dy=5,tag=!debug] run function kfi:portals/check_tickets
execute positioned ^1 ^ ^ positioned ~ ~-2.5 ~ align xz as @a[dy=5,tag=!debug] run function kfi:portals/check_tickets
execute positioned ^2 ^ ^ positioned ~ ~-2.5 ~ align xz as @a[dy=5,tag=!debug] run function kfi:portals/check_tickets
execute positioned ^-1 ^ ^ positioned ~ ~-2.5 ~ align xz as @a[dy=5,tag=!debug] run function kfi:portals/check_tickets
execute positioned ^-2 ^ ^ positioned ~ ~-2.5 ~ align xz as @a[dy=5,tag=!debug] run function kfi:portals/check_tickets
tag @a[tag=!.temp,distance=..8] remove kfi.portalError
tag @a remove .temp
tag @s remove .temp

# If no Block Display, Kill
execute unless entity @e[type=block_display,distance=..1,tag=kfi.PortalDisplay] run kill @s