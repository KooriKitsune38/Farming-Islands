#> kfi:id/triggered_id



# If player is registered, tell id
execute unless score @s my_id matches ..-1 if score @s kfi.IDs matches 1.. run function kfi:id/tell_id

# If no id, assign it
execute unless score @s my_id matches ..-1 unless score @s kfi.IDs matches 1.. run function kfi:id/check_availability

# If negative value, remove id
execute if score @s my_id matches ..-1 unless score @s kfi.IDs matches 1.. run tellraw @s [{"text":"| ","color":"gray"},{"text":"You aren't registered yet...","color":"gold"}]
execute if score @s my_id matches ..-1 if score @s kfi.IDs matches 1.. run function kfi:id/unregister

# Set scoreboard back to 0
scoreboard players reset @s my_id

# Remove advancement
advancement revoke @s only kfi:triggered_id