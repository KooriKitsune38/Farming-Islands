#> kfi:coop/get_index

# Scoreboard
    #> Set -1
    scoreboard players set .1 home 1
    #> Copy home into index
    scoreboard players operation .index home = @s home
    #> Add -1 to index
    scoreboard players operation .index home += .1 home

# Copy index into tempIndex
execute store result storage kfi:values tempIndex int 1 run scoreboard players get .index home

# Copy into a tempIslands
$data modify storage kfi:values tempIslands set from storage kfi:values players[{UUID:$(tempUUID)}].coopIslands

# Get coop home
function kfi:home/get_coop_home with storage kfi:values

# Remove
data remove storage kfi:values tempIslands