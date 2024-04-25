#> kfi:tp/timer

# Remove 1
scoreboard players remove @s kfi.teleportTimer 1

# If 0 reset
execute if score @s kfi.teleportTimer matches ..0 run function #kfi:tp_expired