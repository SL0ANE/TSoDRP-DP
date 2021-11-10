tag @s add 123
execute unless entity @e[tag=minion,tag=a_subcast2,tag=!dying,scores={recover=-1}] run scoreboard players set @s casting 1
execute if entity @e[tag=minion,tag=a_subcast2,tag=!dying,scores={recover=-1}] run scoreboard players set @s casting 2
execute as @e[tag=minion,tag=a_subcast2,tag=!dying,scores={recover=-1}] run scoreboard players set @s supercasting 20
execute as @e[tag=a_subcast2,tag=normalcaster2] run scoreboard players set @s cardcasting2 25
tag @s remove 123
#检测如果不存在其他拥有“释放技能后”时机的随从

