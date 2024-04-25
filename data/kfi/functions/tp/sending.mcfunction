#> kfi:tp/sending

# Retrieve Player
scoreboard players reset .success k.Values
scoreboard players operation .tempID k.Values = @s tp
execute store result score .tempUUID kfi.teleportUUID store result score @s kfi.teleportUUID run data get entity @s UUID[0]
tag @s add .temp
execute as @a[tag=!.temp] at @s if score @s kfi.IDs = .tempID k.Values run function kfi:tp/as_receiver
tag @s remove .temp

# Receiver
    #> No Player
    execute unless score .success k.Values matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"No Player Found!"}]
    #> Player Found
    execute if score .success k.Values matches 1 run function kfi:tp/as_sender