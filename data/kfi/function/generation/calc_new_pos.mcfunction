# Place coords into scoreboards
execute store result score .genX k.Values run data get storage kfi:values generatorPos.x
execute store result score .genZ k.Values run data get storage kfi:values generatorPos.z

# Calculate new distance
scoreboard players operation .genX k.Values += .islandsDistance k.Values
execute if score .genX k.Values matches 50000.. run scoreboard players operation .genZ k.Values += .islandsDistance k.Values
execute if score .genX k.Values matches 50000.. run scoreboard players set .genX k.Values -50000

# Avoid Spawn
execute if score .genZ k.Values matches -20000..20000 run scoreboard players set .genZ k.Values 25000

# Set into storage
execute store result storage kfi:values generatorPos.x int 1 run scoreboard players get .genX k.Values
execute store result storage kfi:values generatorPos.z int 1 run scoreboard players get .genZ k.Values