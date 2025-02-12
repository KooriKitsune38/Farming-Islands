#> kfi:convert_data

# Data
    #> Retrieve UUID
    data modify storage kfi:values tempUUID set from entity @s UUID[0]
    #> Set Storage
    function kfi:home/set_storage with storage kfi:values