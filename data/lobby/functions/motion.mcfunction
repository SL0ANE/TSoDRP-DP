
execute as @s run function lobby:motionget
execute as @s if score @s rotation matches -450..-1 run tag @s add f_south
execute as @s if score @s rotation matches -3600..-3150 run tag @s add f_south
execute as @s if score @s rotation matches 3150..3599 run tag @s add f_south
execute as @s if score @s rotation matches 0..450 run tag @s add f_south
execute as @s if score @s z > z1 z run tag @s add h_south

execute as @s if score @s rotation matches 1350..2250 run tag @s add f_north
execute as @s if score @s rotation matches -2250..-1350 run tag @s add f_north
execute as @s if score @s z < z1 z run tag @s add h_north

execute as @s if score @s rotation matches 2251..3149 run tag @s add f_east
execute as @s if score @s rotation matches -1351..-449 run tag @s add f_east
execute as @s if score @s x > x1 x run tag @s add h_east

execute as @s if score @s rotation matches 451..1349 run tag @s add f_west
execute as @s if score @s rotation matches -3149..-2251 run tag @s add f_west
execute as @s if score @s x < x1 x run tag @s add h_west

execute as @s[tag=f_south,tag=h_south] run tag @s add front
execute as @s[tag=f_north,tag=h_north] run tag @s add front
execute as @s[tag=f_east,tag=h_east] run tag @s add front
execute as @s[tag=f_west,tag=h_west] run tag @s add front

execute as @s[tag=f_south,tag=h_north] run tag @s add back
execute as @s[tag=f_north,tag=h_south] run tag @s add back
execute as @s[tag=f_east,tag=h_west] run tag @s add back
execute as @s[tag=f_west,tag=h_east] run tag @s add back



tag @s remove f_south
tag @s remove f_north
tag @s remove f_east
tag @s remove f_west
tag @s remove h_south
tag @s remove h_north
tag @s remove h_east
tag @s remove h_west

tag @s remove front
tag @s remove back
