#> kfi:home/trigger

# If no home
execute unless entity @s[tag=kfi.HasIsland] run tellraw @s [{"text":"| ","color":"gray"},{"color":"red","text":"You don't have an island!"}]

# Set values
execute store result storage kfi:values tempPos.x int 1 run scoreboard players get @s kfi.x
scoreboard players operation .tempY k.Values = @s kfi.y
scoreboard players operation .tempY k.Values += .1 k.Values
execute store result storage kfi:values tempPos.y int 1 run scoreboard players get .tempY k.Values
execute store result storage kfi:values tempPos.z int 1 run scoreboard players get @s kfi.z

# Tp
execute if entity @s[tag=kfi.HasIsland] run function kfi:home/tp_home with storage kfi:values tempPos

# Scoreboard
scoreboard players reset @s home

# Advancement
advancement revoke @s only kfi:triggered_home