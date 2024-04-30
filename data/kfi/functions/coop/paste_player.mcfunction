#> kfi:coop/paste_player

# Tellraw
$tellraw @s [{"text":"[$(UUID)] ","color":"gray"},{"color":"gold","text":"$(Name)","clickEvent": {"action": "run_command","value": "/trigger remove_coop set $(UUID)"}}]

# Set success
scoreboard players set .success k.Values 1