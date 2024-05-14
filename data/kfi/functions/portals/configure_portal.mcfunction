#> kfi:portals/configure_portal

# Coordinates
    ## X
    $data modify entity @e[type=marker,tag=kfi.PortalMarker,limit=1,sort=nearest,distance=..3] data.portalLocation.x set value $(x)
    ## Y
    $data modify entity @e[type=marker,tag=kfi.PortalMarker,limit=1,sort=nearest,distance=..3] data.portalLocation.y set value $(y)
    ## Z
    $data modify entity @e[type=marker,tag=kfi.PortalMarker,limit=1,sort=nearest,distance=..3] data.portalLocation.z set value $(z)

# Ticket Needed
$data modify entity @e[type=marker,tag=kfi.PortalMarker,limit=1,sort=nearest,distance=..3] data.portalLocation.requiredTickets set value $(tickets)

# Tellraw
tellraw @s {"text":"| Portal Configured.","color":"gray"}