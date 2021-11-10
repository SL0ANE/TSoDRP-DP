tag @s add 734

execute as @e[tag=card,scores={handorder=1..}] if score @s ownedby = @e[tag=mascot,tag=734,limit=1] ownedby run tag @s add category1
execute as @e[tag=card,scores={handorder=1..}] if score @s ownedby = @a[tag=734,limit=1] playernumber run tag @s add category1

execute as @e[tag=category1] at @s unless score @s waiting matches 1.. run function ingame:display/hand




tag @e[tag=category1] remove category1
tag @s remove 734