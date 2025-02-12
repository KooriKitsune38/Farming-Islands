#> kfi:tp/as_receiver

# Assign UUID
scoreboard players operation @s kfi.teleportUUID = .tempUUID kfi.teleportUUID

# Set Success
scoreboard players set .success k.Values 1

# Tellraw
execute as @p[tag=.temp] run tellraw @p ["",{"text":"-------------------------------------------------","color":"gray"},{"text":"\n"},{"text":"You were sent a teleport request by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"},{"text":"\n"},{"text":"[ACCEPT]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tp set -1"}},{"text":" / ","color":"white"},{"text":"[DECLINE]","color":"red","clickEvent":{"action":"run_command","value":"/trigger tp set -3"}},{"text":"     |     ","color":"white"},{"text":"[ACCEPT IN SURVIVAL]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger tp set -2"}},{"text":"\n"},{"text":"-------------------------------------------------","color":"gray"}]