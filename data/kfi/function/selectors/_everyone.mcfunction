#> kfi:selectors/_everyone

# Scoreboards
    scoreboard players enable @s my_id

    scoreboard players enable @s spawn

    scoreboard players enable @s home

    scoreboard players enable @s sethome

    scoreboard players enable @s tp

    scoreboard players enable @s coop

    scoreboard players enable @s remove_coop

    scoreboard players enable @s[tag=!kfi.HasIsland] generate_island

# Teleport Timer
execute if score @s kfi.teleportTimer matches 0.. run function kfi:tp/timer

# Tp to spawn if y level too low
execute at @s positioned ~ -100 ~ if entity @s[dy=20] run function kfi:islands/falling