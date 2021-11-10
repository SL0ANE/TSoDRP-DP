
execute as @e[tag=chosen,tag=p_card] if score @s playerid = @a[tag=click,limit=1] playerid run tag @s add targetcard
execute store result score temp deckcount if entity @e[tag=targetcard]
function lobby:room1/cardpick2
execute unless entity @e[tag=targetcard,scores={cardboard=1}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 1
execute unless entity @e[tag=targetcard,scores={cardboard=2}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 2
execute unless entity @e[tag=targetcard,scores={cardboard=3}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 3
execute unless entity @e[tag=targetcard,scores={cardboard=4}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 4
execute unless entity @e[tag=targetcard,scores={cardboard=5}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 5
execute unless entity @e[tag=targetcard,scores={cardboard=6}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 6
execute unless entity @e[tag=targetcard,scores={cardboard=7}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 7
execute unless entity @e[tag=targetcard,scores={cardboard=8}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 8
execute unless entity @e[tag=targetcard,scores={cardboard=9}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 9
execute unless entity @e[tag=targetcard,scores={cardboard=10}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 10
execute unless entity @e[tag=targetcard,scores={cardboard=11}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 11
execute unless entity @e[tag=targetcard,scores={cardboard=12}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 12
execute unless entity @e[tag=targetcard,scores={cardboard=13}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 13
execute unless entity @e[tag=targetcard,scores={cardboard=14}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 14
execute unless entity @e[tag=targetcard,scores={cardboard=15}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 15
execute unless entity @e[tag=targetcard,scores={cardboard=16}] unless score @e[tag=summon2,limit=1] cardboard matches 1.. run scoreboard players set @e[tag=summon2] cardboard 16



scoreboard players operation @e[tag=summon2] playerid = @a[tag=click,limit=1] playerid
execute unless entity @e[tag=summon2] run playsound minecraft:block.note_block.didgeridoo block @a[tag=click] ~ ~ ~ 3 1 1
execute if entity @e[tag=summon2] run playsound minecraft:ui.stonecutter.take_result block @a[tag=click] ~ ~ ~ 3 1 1
execute as @e[tag=summon2,scores={cardboard=1}] run item replace block -182 18 35 container.9 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=2}] run item replace block -182 18 35 container.10 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=3}] run item replace block -182 18 35 container.11 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=4}] run item replace block -182 18 35 container.12 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=5}] run item replace block -182 18 35 container.13 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=6}] run item replace block -182 18 35 container.14 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=7}] run item replace block -182 18 35 container.15 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=8}] run item replace block -182 18 35 container.16 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=9}] run item replace block -182 18 35 container.17 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=10}] run item replace block -182 18 35 container.18 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=11}] run item replace block -182 18 35 container.19 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=12}] run item replace block -182 18 35 container.20 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=13}] run item replace block -182 18 35 container.21 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=14}] run item replace block -182 18 35 container.22 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=15}] run item replace block -182 18 35 container.23 from entity @s armor.head
execute as @e[tag=summon2,scores={cardboard=16}] run item replace block -182 18 35 container.24 from entity @s armor.head
tp @e[tag=summon2,scores={cardboard=1}] -175 19 53 90 0
tp @e[tag=summon2,scores={cardboard=2}] -175 19 54 90 0
tp @e[tag=summon2,scores={cardboard=3}] -175 19 55 90 0
tp @e[tag=summon2,scores={cardboard=4}] -175 19 56 90 0
tp @e[tag=summon2,scores={cardboard=5}] -175 17 53 90 0
tp @e[tag=summon2,scores={cardboard=6}] -175 17 54 90 0
tp @e[tag=summon2,scores={cardboard=7}] -175 17 55 90 0
tp @e[tag=summon2,scores={cardboard=8}] -175 17 56 90 0
tp @e[tag=summon2,scores={cardboard=9}] -173 19 53 90 0
tp @e[tag=summon2,scores={cardboard=10}] -173 19 54 90 0
tp @e[tag=summon2,scores={cardboard=11}] -173 19 55 90 0
tp @e[tag=summon2,scores={cardboard=12}] -173 19 56 90 0
tp @e[tag=summon2,scores={cardboard=13}] -173 17 53 90 0
tp @e[tag=summon2,scores={cardboard=14}] -173 17 54 90 0
tp @e[tag=summon2,scores={cardboard=15}] -173 17 55 90 0
tp @e[tag=summon2,scores={cardboard=16}] -173 17 56 90 0
scoreboard players reset @e[tag=summon2] ownedby
scoreboard players reset @e[tag=summon2] handorder
tag @e[tag=summon2] remove derive
tag @e[tag=summon2] add button
scoreboard players reset @e[tag=summon2] truedamage
execute as @e[tag=summon2] run data merge entity @s {Small:0b}
effect give @s glowing 1 0
scoreboard players reset temp deckcount
tag @e remove targetcard
tag @e remove summon2
execute as @a[tag=click,tag=preparing_hold1,scores={deck=1}] run loot replace entity @s enderchest.0 mine -182 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold1,scores={deck=2}] run loot replace entity @s enderchest.1 mine -182 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold1,scores={deck=3}] run loot replace entity @s enderchest.2 mine -182 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold1,scores={deck=4}] run loot replace entity @s enderchest.3 mine -182 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold1,scores={deck=5}] run loot replace entity @s enderchest.4 mine -182 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold1,scores={deck=1}] run item replace entity @s container.11 with air
execute as @a[tag=click,tag=preparing_hold1,scores={deck=2}] run item replace entity @s container.12 with air
execute as @a[tag=click,tag=preparing_hold1,scores={deck=3}] run item replace entity @s container.13 with air
execute as @a[tag=click,tag=preparing_hold1,scores={deck=4}] run item replace entity @s container.14 with air
execute as @a[tag=click,tag=preparing_hold1,scores={deck=5}] run item replace entity @s container.15 with air
execute as @a[tag=click,tag=preparing_hold1] run loot replace entity @s enderchest.5 mine -182 18 35 minecraft:diamond_pickaxe
