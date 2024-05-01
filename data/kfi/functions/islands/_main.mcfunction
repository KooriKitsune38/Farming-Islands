#> kfi:islands/_main

# Take nearby players
tag @s add .temp
execute positioned ~-150 ~ ~-150 as @a[dx=400,dz=400] run function kfi:islands/_players
tag @s remove .temp