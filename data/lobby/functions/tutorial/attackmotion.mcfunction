tag @s add atkrun
tag @s add t_atker
execute unless entity @e[tag=t_atktarget] run tag @e[tag=!atkrun,tag=t_forceatktarget,limit=1,sort=random] add t_atktarget
#强制目标
execute unless entity @e[tag=t_atktarget] as @e[tag=t_minion,tag=puzzle,scores={recover=-1}] unless score @s ownedby = @e[tag=atkrun,limit=1] ownedby run tag @s add puzzletarget
execute unless entity @e[tag=t_atktarget] run tag @e[tag=puzzletarget,sort=random,limit=1] add t_atktarget
#玄惑目标
execute unless entity @e[tag=t_atktarget] as @e[tag=t_minion,tag=!dodge,scores={recover=-1}] unless score @s ownedby = @e[tag=atkrun,limit=1] ownedby if score @s minionboard = @e[tag=atkrun,limit=1] minionboard run tag @s add t_atktarget
#对位目标
execute unless entity @e[tag=t_atktarget] if score @s ownedby matches -1 run tag @e[tag=t_mascot,scores={ownedby=-2}] add t_atktarget
execute unless entity @e[tag=t_atktarget] if score @s ownedby matches -2 run tag @e[tag=t_mascot,scores={ownedby=-1}] add t_atktarget
#敌方牌手


execute as @s[tag=!t_forceattack] unless score @s hp matches 1.. run scoreboard players set @s attacking 2
#execute as @s[tag=!t_forceattack] unless score @s attack matches 1.. run scoreboard players set @s attacking 2
#execute as @s[tag=!t_forceattack] if score @s stun matches 1.. run scoreboard players set @s attacking 2


kill @e[tag=t_location1]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","t_location1"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
tp @e[tag=summon] @s
tp @s ~ ~0.6 ~
scoreboard players operation @e[tag=summon] minioncode = @s minioncode
execute as @e[tag=t_data] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
tag @s remove atkrun
tag @e remove summon
tag @e remove puzzletarget

#这个function会使随从发动攻击时选取攻击目标