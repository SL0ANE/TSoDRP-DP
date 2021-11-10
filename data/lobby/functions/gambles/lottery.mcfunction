scoreboard players remove lottery system 1
kill @e[tag=gamemob,tag=lottery_poster]
execute if score lottery system matches 110 run function lobby:gambles/lottery2
execute if score lottery system matches 110 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 1
execute if score lottery system matches 100 run function lobby:gambles/lottery2
execute if score lottery system matches 100 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 10
execute if score lottery system matches 90 run function lobby:gambles/lottery2
execute if score lottery system matches 90 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 2
execute if score lottery system matches 80 run function lobby:gambles/lottery2
execute if score lottery system matches 80 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 9
execute if score lottery system matches 70 run function lobby:gambles/lottery2
execute if score lottery system matches 70 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 3
execute if score lottery system matches 60 run function lobby:gambles/lottery2
execute if score lottery system matches 60 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 8
execute if score lottery system matches 50 run function lobby:gambles/lottery2
execute if score lottery system matches 50 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 4
execute if score lottery system matches 40 run function lobby:gambles/lottery2
execute if score lottery system matches 40 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 7
execute if score lottery system matches 30 run function lobby:gambles/lottery2
execute if score lottery system matches 30 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 6
execute if score lottery system matches 20 run function lobby:gambles/lottery2
execute if score lottery system matches 20 run scoreboard players set @e[tag=lottery_gift,tag=summon] number 5
execute if score lottery system matches 10 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 2 1.5 0
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=1}] run tp @s -217 21 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=2}] run tp @s -217 20 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=3}] run tp @s -218 21 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=4}] run tp @s -218 20 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=5}] run tp @s -219 21 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=6}] run tp @s -219 20 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=7}] run tp @s -220 21 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=8}] run tp @s -220 20 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=9}] run tp @s -221 21 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,scores={number=10}] run tp @s -221 20 73
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,tag=common] at @s run playsound minecraft:block.note_block.harp block @a ~ ~ ~ 2 1 0
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,tag=rare] at @s run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1 0
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,tag=epic] at @s run playsound minecraft:block.note_block.bit block @a ~ ~ ~ 2 1 0
execute if score lottery system matches 1.. as @e[tag=lottery_gift,tag=summon,tag=supreme] at @s run playsound minecraft:block.note_block.chime block @a ~ ~ ~ 2 1 0
execute if score lottery system matches 1.. run particle minecraft:crimson_spore -215 18.5 73 0 0 0 0 20 force
execute if score lottery system matches 1.. run particle minecraft:crimson_spore -223 18.5 73 0 0 0 0 20 force


execute if score lottery system matches 1 run summon minecraft:item_frame -219 20 73 {Tags:["lobby","gamemob","lottery_poster"],Facing:2b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:5}}}
execute if score lottery system matches 1 run kill @e[tag=lottery_gift]
execute if score lottery system matches 1 run scoreboard players reset lottery system
tag @e remove summon