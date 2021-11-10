execute store result score temp number run data get entity @s ArmorItems.[3].tag.CustomModelData
scoreboard players remove temp number 1000
execute as @s store result entity @s ArmorItems.[3].tag.CustomModelData int 1 run scoreboard players get temp number
scoreboard players reset temp number
scoreboard players set @s reducedrecover 0
scoreboard players set @s recover -1
scoreboard players set @s attacked 0
tag @s add attack_lock
scoreboard players operation @s hplimit = @s basic_hp
scoreboard players operation @s[scores={hp=..0}] hp = @s basic_hp
scoreboard players operation @s trueattack = @s basic_attack
execute as @s at @s run function ingame:minion/hpcheck
execute as @s at @s run function ingame:minion/buffcheck
tag @s remove dead
particle minecraft:dust_color_transition 0 0 0 2 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0.2 80 force
playsound minecraft:entity.iron_golem.death block @a[tag=tutorial] ~ ~ ~ 1.5 2 1