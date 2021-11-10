
execute as @e[tag=chosen,tag=minion2] if score @s playerid = @a[tag=click,limit=1] playerid run tag @s add targetminion2
execute store result score temp minioncount if entity @e[tag=targetminion2]
function lobby:room1/minionpick2
execute unless entity @e[tag=targetminion2,scores={minionboard=1}] unless score @e[tag=summon2,limit=1] minionboard matches 1.. run scoreboard players set @e[tag=summon2] minionboard 1
execute unless entity @e[tag=targetminion2,scores={minionboard=2}] unless score @e[tag=summon2,limit=1] minionboard matches 1.. run scoreboard players set @e[tag=summon2] minionboard 2
execute unless entity @e[tag=targetminion2,scores={minionboard=3}] unless score @e[tag=summon2,limit=1] minionboard matches 1.. run scoreboard players set @e[tag=summon2] minionboard 3
scoreboard players operation @e[tag=summon2] playerid = @a[tag=click,limit=1] playerid
execute unless entity @e[tag=summon2] run playsound minecraft:block.note_block.didgeridoo block @a[tag=click] ~ ~ ~ 3 1 1
execute if entity @e[tag=summon2] run playsound minecraft:ui.stonecutter.take_result block @a[tag=click] ~ ~ ~ 3 1 1
tp @e[tag=summon2,scores={minionboard=1}] -175 19 41 90 0
tp @e[tag=summon2,scores={minionboard=2}] -175 18 42 90 0
tp @e[tag=summon2,scores={minionboard=3}] -175 17 43 90 0
execute as @e[tag=summon2,scores={minionboard=1}] run item replace block -182 18 35 container.6 from entity @s armor.head
execute as @e[tag=summon2,scores={minionboard=2}] run item replace block -182 18 35 container.7 from entity @s armor.head
execute as @e[tag=summon2,scores={minionboard=3}] run item replace block -182 18 35 container.8 from entity @s armor.head
tag @e[tag=summon2] remove display
tag @e[tag=summon2] remove gamemob
tag @e[tag=summon2] add button
effect give @s glowing 1 0
scoreboard players reset temp minioncount
tag @e remove targetminion2
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
