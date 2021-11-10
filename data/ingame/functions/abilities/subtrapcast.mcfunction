tag @s add 678
execute unless entity @e[tag=a_subtrapcast,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_subtrapcast2,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_subtrapcast2,tag=normalcaster2] run scoreboard players set @s trapcasting 3
execute as @e[tag=a_subtrapcast,tag=!dying,scores={recover=-1}] if score @s ownedby = @e[tag=678,limit=1] ownedby run scoreboard players set @s casting2 25
scoreboard players set @e[tag=a_subtrapcast2,tag=!dying,scores={recover=-1}] casting2 25
scoreboard players set @e[tag=a_subtrapcast2,tag=normalcaster2] cardcasting2 25
tag @s remove 678
#检测如果不存在其他拥有“陷阱牌触发后”时机的卡牌

