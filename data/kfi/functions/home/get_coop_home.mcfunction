#> kfi:home/get_coop_home

# No spawnpoint
scoreboard players set .noSpawnpoint home 1

# Tp with correct home
$function kfi:home/tp_home with storage kfi:values tempIslands[$(tempIndex)].homePos