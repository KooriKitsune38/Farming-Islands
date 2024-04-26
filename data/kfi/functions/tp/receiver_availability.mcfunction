#> kfi:tp/receiver_availability

# Check
    #> No ID
    execute unless score @s kfi.teleportUUID matches -2147483648..2147483647 run function kfi:tp/as_receiver
    #> Has ID
    execute if score @s kfi.teleportUUID matches -2147483648..2147483647 run scoreboard players set .success k.Values 2