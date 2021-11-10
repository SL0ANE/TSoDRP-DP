playsound minecraft:ui.loom.select_pattern block @a[distance=..16] ~ ~ ~ 1.1 2 0
execute as @e[tag=p_card,tag=chosen] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add count
scoreboard players add @e[tag=count,scores={cardboard=1..8}] cardboard 100
scoreboard players remove @e[tag=count,scores={cardboard=9..16}] cardboard 8
scoreboard players remove @e[tag=count,scores={cardboard=101..108}] cardboard 92

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
tp @e[tag=count,scores={cardboard=1}] -231 19 56 -90 0
tp @e[tag=count,scores={cardboard=2}] -231 19 55 -90 0
tp @e[tag=count,scores={cardboard=3}] -231 19 54 -90 0
tp @e[tag=count,scores={cardboard=4}] -231 19 53 -90 0
tp @e[tag=count,scores={cardboard=5}] -231 17 56 -90 0
tp @e[tag=count,scores={cardboard=6}] -231 17 55 -90 0
tp @e[tag=count,scores={cardboard=7}] -231 17 54 -90 0
tp @e[tag=count,scores={cardboard=8}] -231 17 53 -90 0
tp @e[tag=count,scores={cardboard=9}] -233 19 56 -90 0
tp @e[tag=count,scores={cardboard=10}] -233 19 55 -90 0
tp @e[tag=count,scores={cardboard=11}] -233 19 54 -90 0
tp @e[tag=count,scores={cardboard=12}] -233 19 53 -90 0
tp @e[tag=count,scores={cardboard=13}] -233 17 56 -90 0
tp @e[tag=count,scores={cardboard=14}] -233 17 55 -90 0
tp @e[tag=count,scores={cardboard=15}] -233 17 54 -90 0
tp @e[tag=count,scores={cardboard=16}] -233 17 53 -90 0

tag @e remove count


execute as @s[scores={deck=1}] run loot replace entity @s enderchest.0 mine -224 18 35 mainhand
execute as @s[scores={deck=2}] run loot replace entity @s enderchest.1 mine -224 18 35 mainhand
execute as @s[scores={deck=3}] run loot replace entity @s enderchest.2 mine -224 18 35 mainhand
execute as @s[scores={deck=4}] run loot replace entity @s enderchest.3 mine -224 18 35 mainhand
execute as @s[scores={deck=5}] run loot replace entity @s enderchest.4 mine -224 18 35 mainhand
execute as @s[scores={deck=1}] run item replace entity @s container.11 with air
execute as @s[scores={deck=2}] run item replace entity @s container.12 with air
execute as @s[scores={deck=3}] run item replace entity @s container.13 with air
execute as @s[scores={deck=4}] run item replace entity @s container.14 with air
execute as @s[scores={deck=5}] run item replace entity @s container.15 with air
loot replace entity @s enderchest.5 mine -224 18 35 minecraft:diamond_pickaxe