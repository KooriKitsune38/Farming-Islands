#> kfi:coop/as_receiver

# Assign UUID
scoreboard players operation @s kfi.coopUUID = .tempUUID kfi.coopUUID

# Set Success
scoreboard players set .success k.Values 1

# Tellraw
execute as @p[tag=.temp] run tellraw @p ["",{"text":"-------------------------------------------------","color":"gray"},{"text":"\n"},{"text":"You were sent a coop request by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"},{"text":"\n"},{"text":"[ACCEPT]","color":"green","clickEvent":{"action":"run_command","value":"/trigger coop set -1"}},{"text":" / ","color":"white"},{"text":"[DECLINE]","color":"red","clickEvent":{"action":"run_command","value":"/trigger coop set -2"}},{"text":"\n"},{"text":"-------------------------------------------------","color":"gray"}]