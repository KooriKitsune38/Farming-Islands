#> kfi:generation/no_spawn

# Tell the player doesn't have any id.
tellraw @s ""
tellraw @s [{"text":"| ","color":"gray"},{"color":"#954535","text":"No spawn is set! "}]
tellraw @s [{"text":"| ","color":"gray"},{"clickEvent":{"action":"suggest_command","value":"/function kfi:generation/summon_spawn"},"color":"#DAA06D","text":"[Click here to set it]","underlined":true}]
tellraw @s ""