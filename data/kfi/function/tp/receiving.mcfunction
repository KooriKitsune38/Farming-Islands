#> kfi:tp/receiving

# As receiver
execute unless entity @s[tag=kfi.tpSender] run function kfi:tp/receiver_actions

# As Sender
execute if entity @s[tag=kfi.tpSender] run function kfi:tp/reset_tp