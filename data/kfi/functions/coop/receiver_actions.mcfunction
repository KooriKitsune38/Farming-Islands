#> kfi:coop/receiver_actions

# Sort Action
    #> -1 (Accept)
    execute if score @s coop matches -1 run function kfi:coop/accept_coop
    #> -2 (Cancel)
    execute if score @s coop matches ..-2 run function kfi:tp/deny_tp