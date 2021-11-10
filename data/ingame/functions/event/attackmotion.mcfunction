tag @s add atkrun
tag @s add atker
execute unless entity @e[tag=atktarget] run tag @e[tag=!atkrun,tag=forceatktarget,limit=1,sort=random] add atktarget
#强制目标
execute unless entity @e[tag=atktarget] as @e[tag=minion,tag=puzzle,scores={recover=-1}] unless score @s ownedby = @e[tag=atkrun,limit=1] ownedby run tag @s add puzzletarget
execute unless entity @e[tag=atktarget] run tag @e[tag=puzzletarget,sort=random,limit=1] add atktarget
#玄惑目标
execute unless entity @e[tag=atktarget] as @e[tag=minion,tag=!dodge,scores={recover=-1}] unless score @s ownedby = @e[tag=atkrun,limit=1] ownedby if score @s minionboard = @e[tag=atkrun,limit=1] minionboard run tag @s add atktarget
#对位目标
execute unless entity @e[tag=atktarget] if score @s ownedby matches 1 run tag @e[tag=mascot,scores={ownedby=2}] add atktarget
execute unless entity @e[tag=atktarget] if score @s ownedby matches 2 run tag @e[tag=mascot,scores={ownedby=1}] add atktarget
#敌方牌手


execute as @s[tag=!forceattack] unless score @s hp matches 1.. run scoreboard players set @s attacking 2
#execute as @s[tag=!forceattack] unless score @s attack matches 1.. run scoreboard players set @s attacking 2
#execute as @s[tag=!forceattack] if score @s stun matches 1.. run scoreboard players set @s attacking 2


execute if entity @e[tag=atktarget,tag=dying] run scoreboard players set @s attacking 1
execute if score @s attacking matches 37 run scoreboard players add @s attacked 1


kill @e[tag=location1]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","location1"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
tp @e[tag=summon] @s
tp @s ~ ~0.6 ~
scoreboard players operation @e[tag=summon] minioncode = @s minioncode
execute as @e[tag=data] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
tag @s remove atkrun
tag @e remove summon
tag @e remove puzzletarget

#这个function会使随从发动攻击时选取攻击目标