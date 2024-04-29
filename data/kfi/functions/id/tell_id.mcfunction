#> kfi:id/tell_id

# Tell ID
tellraw @s [{"text":"| ","color":"gray"},{"text": "Your ID is: ","color":"gold"},{"score":{"name": "@s","objective": "kfi.IDs"},"color":"#DAA06D"}]

# Ask to reset
tellraw @s [{"text":"\n"},{"text":"| ","color":"gray"},{"text": "Click here to reset it","color":"red","clickEvent":{"action":"run_command","value":"/trigger my_id set -1"}},{"text":" |","color":"gray"}]