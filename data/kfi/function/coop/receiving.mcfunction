#> kfi:coop/receiving

# As receiver
execute unless entity @s[tag=kfi.coopSender] if entity @s[tag=kfi.HasIsland] run function kfi:coop/receiver_actions

# As Sender
execute if entity @s[tag=kfi.coopSender] run function kfi:coop/reset_coop