execute unless entity @s[tag=a_prestnrmv,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_prestnrmv2,tag=!dying,scores={recover=-1}] run scoreboard players set @s stunremoving 1
scoreboard players set @e[tag=a_prestnrmv,tag=!dying,scores={recover=-1}] casting 25
scoreboard players set @e[tag=a_prestnrmv2,tag=!dying,scores={recover=-1}] casting 25
scoreboard players set @e[tag=a_prestnrmv2,tag=normalcaster2] cardcasting2 25
#检测如果自身技能触发时机不为“眩晕移除”，且不存在其他拥有“眩晕移除”时机的随从