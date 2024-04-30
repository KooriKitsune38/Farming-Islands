#> kfi:coop/paste_island

# Tellraw
$tellraw @s [{"text":"[$(index)] ","color":"gray"},{"color":"gold","text":"$(Name)'s Island","clickEvent": {"action": "run_command","value": "/trigger home set $(trigger)"}}]

# Set success
scoreboard players set .success k.Values 1