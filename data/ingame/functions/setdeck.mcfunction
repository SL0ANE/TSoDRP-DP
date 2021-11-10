tag @s add running2
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[type=!player,tag=running2,limit=1] ownedby run tag @s add targetcard
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @a[tag=running2,limit=1] playernumber run tag @s add targetcard

#execute as @e[tag=targetcard,scores={cardorder=1,ownedby=1}] at @e[tag=running2,tag=ownedby1] if score system arena matches 1 positioned 63.800 28.4 -4.5 rotated 90 0 run function ingame:display/deck1
#execute as @e[tag=targetcard,scores={cardorder=1,ownedby=2}] at @e[tag=running2,tag=ownedby2] if score system arena matches 1 positioned 71.200 28.4 -4.5 rotated -90 0 run function ingame:display/deck1
execute as @e[tag=targetcard] at @e[tag=running2] if score system arena matches 1 rotated ~ 0 positioned ^ ^ ^0.3 run tp @s ~ ~-0.7 ~

#execute as @e[tag=targetcard] run data merge entity @s {Pose:{Head:[90.0f,0.0f]}}
#execute as @e[tag=targetcard] run data modify entity @s Pose.Head[1] set from entity @e[tag=running2,limit=1] Rotation.[0]

execute as @e[tag=targetcard] if data entity @s ArmorItems[3].Count run data modify entity @s HandItems[1] set from entity @s ArmorItems[3]
execute as @e[tag=targetcard] run data modify entity @s ArmorItems[3] set value {}

tag @e remove targetcard
tag @s remove running2