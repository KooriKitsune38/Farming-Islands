#> kfi:coop/remove_trigger

# Get UUID
data modify storage kfi:values ownerUUID set from entity @s UUID[0]

# If score is 1, list players
execute if score @s remove_coop matches 1 run function kfi:coop/list_collaborators

# If not 0 or 1, check if player exist
execute store result storage kfi:values tempUUID int 1 run scoreboard players get @s remove_coop
execute unless score @s remove_coop matches 0..1 run function kfi:coop/check_collaborators with storage kfi:values

# Scoreboard
scoreboard players reset @s remove_coop

# Advancement
advancement revoke @s only kfi:remove_coop