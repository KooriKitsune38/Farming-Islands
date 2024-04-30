#> kfi:coop/add_coop

## Sender Side

# Append data
## Sender
    ## Set Template
    data modify storage kfi:values tempPlayer set value {Name:"",UUID:0,homePos:{x:0,y:0,z:0}}
    ## Retrieve UUID from Recevier
    execute store result storage kfi:values receiverUUID int 1 run data modify storage kfi:values tempPlayer.UUID set from entity @p[tag=.temp] UUID[0]
    ## Retrive Home from Receiver
    function kfi:coop/receiver_home with storage kfi:values
    ## Set Sender Coop Island
    $data modify storage kfi:values players[{UUID:$(tempUUID)}].coopIslands append from storage kfi:values tempPlayer
## Receiver
    ## Create Template
    data modify storage kfi:values coopTemplate set value {UUID:0,Name:""}
    ## Set Sender UUID
    data modify storage kfi:values coopTemplate.UUID set from entity @s UUID[0]
    ## Set Sender Name
    $data modify storage kfi:values coopTemplate.Name set from storage kfi:values players[{UUID:$(tempUUID)}].Name
    ## Append Sender Template
    data modify storage kfi:values tempPlayer.players append from storage kfi:values coopTemplate
    ## Set coopIslands to Receiver
    $data modify storage kfi:values players[{UUID:$(receiverUUID)}].coopIslands append from storage kfi:values tempPlayer