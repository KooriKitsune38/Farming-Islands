#> kfi:coop/receiver_availability

# Check
    #> No ID
    execute unless score @s kfi.coopUUID matches -2147483648..2147483647 run function kfi:coop/as_receiver
    #> Has ID
    execute unless score .success k.Values matches 1 if score @s kfi.coopUUID matches -2147483648..2147483647 run function kfi:coop/busy_receiver