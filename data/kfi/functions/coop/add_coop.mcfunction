#> kfi:coop/add_coop

## As sender
data modify storage kfi:values tempUUID set from entity @s UUID[0]

# Append data
## Sender

    ## Receiver Template
        ## Create Template
        data modify storage kfi:values coopTemplate set value {UUID:0,Name:""}
        ## Set Sender UUID
        data modify storage kfi:values coopTemplate.UUID set from entity @s UUID[0]

    ## General Template
        ## Set Template
        data modify storage kfi:values tempPlayer set value {Name:"",UUID:0,homePos:{x:0,y:0,z:0}}
        ## Set UUID
        data modify storage kfi:values tempPlayer.UUID set from storage kfi:values receiverUUID
        ## Retrive Home
        $data modify storage kfi:values tempPlayer.homePos set from storage kfi:values players[{UUID:$(receiverUUID)}].homePos
        ## Retrieve Name
        $data modify storage kfi:values tempPlayer.Name set from storage kfi:values players[{UUID:$(receiverUUID)}].Name
        ## Set Sender Data
        function kfi:coop/set_sender with storage kfi:values

## Receiver
    ## Append Sender Template
    data modify storage kfi:values tempPlayer.players append from storage kfi:values coopTemplate
    ## Set coopIslands to Receiver
    $data modify storage kfi:values players[{UUID:$(receiverUUID)}].coopIslands append from storage kfi:values tempPlayer

## Sender Side
scoreboard players reset @s kfi.coopUUID
scoreboard players reset @s kfi.coopTimer
tag @s remove kfi.coopSender
tellraw @s [{"text":"| ","color":"gray"},{"color":"light_purple","text":"You are now cooperating!"}]