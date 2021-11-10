tag @s add 123
execute as @e[tag=p_card,tag=chosen] if score @s playerid = @a[tag=click,limit=1] playerid run tag @s add count
execute as @e[tag=count,scores={cardboard=1}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 19 56 -90 0
execute as @e[tag=count,scores={cardboard=2}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 19 55 -90 0
execute as @e[tag=count,scores={cardboard=3}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 19 54 -90 0
execute as @e[tag=count,scores={cardboard=4}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 19 53 -90 0
execute as @e[tag=count,scores={cardboard=5}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 17 56 -90 0
execute as @e[tag=count,scores={cardboard=6}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 17 55 -90 0
execute as @e[tag=count,scores={cardboard=7}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 17 54 -90 0
execute as @e[tag=count,scores={cardboard=8}] if score @s playerid = @a[tag=click,limit=1] playerid run tp @s -231 17 53 -90 0



item replace block -224 18 35 container.9 with air
item replace block -224 18 35 container.10 with air
item replace block -224 18 35 container.11 with air
item replace block -224 18 35 container.12 with air
item replace block -224 18 35 container.13 with air
item replace block -224 18 35 container.14 with air
item replace block -224 18 35 container.15 with air
item replace block -224 18 35 container.16 with air
item replace block -224 18 35 container.17 with air
item replace block -224 18 35 container.18 with air
item replace block -224 18 35 container.19 with air
item replace block -224 18 35 container.20 with air
item replace block -224 18 35 container.21 with air
item replace block -224 18 35 container.22 with air
item replace block -224 18 35 container.23 with air
item replace block -224 18 35 container.24 with air
kill @s
execute as @e[tag=count,scores={cardboard=1}] run item replace block -224 18 35 container.9 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=1}] run item replace block -224 18 35 container.9 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=2}] run item replace block -224 18 35 container.10 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=3}] run item replace block -224 18 35 container.11 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=4}] run item replace block -224 18 35 container.12 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=5}] run item replace block -224 18 35 container.13 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=6}] run item replace block -224 18 35 container.14 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=7}] run item replace block -224 18 35 container.15 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=8}] run item replace block -224 18 35 container.16 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=9}] run item replace block -224 18 35 container.17 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=10}] run item replace block -224 18 35 container.18 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=11}] run item replace block -224 18 35 container.19 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=12}] run item replace block -224 18 35 container.20 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=13}] run item replace block -224 18 35 container.21 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=14}] run item replace block -224 18 35 container.22 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=15}] run item replace block -224 18 35 container.23 from entity @s armor.head
execute as @e[tag=count,scores={cardboard=16}] run item replace block -224 18 35 container.24 from entity @s armor.head
playsound minecraft:item.trident.return block @a[tag=click] ~ ~ ~ 3 1 1

tag @s remove 123
function lobby:room2/refresh
tag @e remove count
execute as @a[tag=click,tag=preparing_hold2,scores={deck=1}] run loot replace entity @s enderchest.0 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=2}] run loot replace entity @s enderchest.1 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=3}] run loot replace entity @s enderchest.2 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=4}] run loot replace entity @s enderchest.3 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=5}] run loot replace entity @s enderchest.4 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=1}] run item replace entity @s container.11 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=2}] run item replace entity @s container.12 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=3}] run item replace entity @s container.13 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=4}] run item replace entity @s container.14 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=5}] run item replace entity @s container.15 with air
loot replace entity @s enderchest.5 mine -224 18 35 minecraft:diamond_pickaxe
