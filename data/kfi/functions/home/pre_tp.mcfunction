#> kfi:home/pre_tp

# Get Coords
    #> Retrieve UUID
    data modify storage kfi:values tempUUID set from entity @s UUID[0]
    #> Get Coords
    function kfi:home/get_coords with storage kfi:values