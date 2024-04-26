#> kfi:tp/sending

# Retrieve Player
scoreboard players reset .success k.Values
scoreboard players operation .tempID k.Values = @s tp
execute store result score .tempUUID kfi.teleportUUID run data get entity @s UUID[0]
tag @s add .temp
execute as @a[tag=!.temp] at @s if score @s kfi.IDs = .tempID k.Values run function kfi:tp/receiver_availability
tag @s remove .temp
execute if score .success k.Values matches 1 store result score @s kfi.teleportUUID run data get entity @s UUID[0]

# Receiver
    #> No Player
    execute unless score .success k.Values matches 1 unless score .success k.Values matches 2 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"No Player Found!"}]
    #> Player Busy
    execute if score .success k.Values matches 2 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"This player has already a pending request."}]
    #> Player Found
    execute if score .success k.Values matches 1 run function kfi:tp/as_sender