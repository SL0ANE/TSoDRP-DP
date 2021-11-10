tag @s add 123
execute unless entity @e[tag=a_prefold,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_prefold2,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_prefold2,tag=normalcaster2] run scoreboard players set @s folding 16
execute as @e[tag=a_prefold,tag=!cast2,tag=!dying,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players set @s casting 25
execute as @e[tag=a_prefold,tag=cast2,tag=!dying,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players set @s casting2 25
scoreboard players set @e[tag=a_prefold2,tag=!cast2,tag=!dying,scores={recover=-1}] casting 25
scoreboard players set @e[tag=a_prefold2,tag=cast2,tag=!dying,scores={recover=-1}] casting2 25
scoreboard players set @e[tag=a_prefold2,tag=normalcaster2] cardcasting2 25
tag @s remove 123
#检测如果自身技能触发时机不为“弃牌时”，且不存在其他拥有“抽牌时”时机的随从