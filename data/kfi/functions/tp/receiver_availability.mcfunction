#> kfi:tp/receiver_availability

# Check
    #> No ID
    execute unless score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/as_receiver
    #> Has ID
    execute unless score .success k.Values matches 1 if score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/busy_receiver