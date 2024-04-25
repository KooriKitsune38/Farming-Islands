#> kfi:id/tellraw

# enable scoreboard
scoreboard players enable @s my_id

# Tell the player doesn't have any id.

tellraw @s [{"text":"| ","color":"gray"},{"color":"#954535","text":"You have not set your id yet. "}]
tellraw @s [{"text":"| ","color":"gray"},{"clickEvent":{"action":"suggest_command","value":"/trigger my_id set 0"},"color":"#DAA06D","text":"[Click here to set it]","underlined":true}]