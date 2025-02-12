#> kfi:tp/receiver_actions

# Sort Action
    #> -1 (Accept)
    execute if score @s tp matches -1 run function kfi:tp/accept_tp
    #> -3 (Accept Survival)
    execute if score @s tp matches -2 run function kfi:tp/accept_tp_survival
    #> -2 (Cancel)
    execute if score @s tp matches ..-3 run function kfi:tp/deny_tp