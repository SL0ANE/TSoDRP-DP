execute if entity @s[tag=!a_prercvrmv] unless entity @e[tag=a_prercvrmv2,tag=!dying,scores={recover=-1}] run scoreboard players set @s rcvremoving 1


#检测如果自身技能触发时机不为“重整时”，且不存在其他拥有“濒死时”时机的随从