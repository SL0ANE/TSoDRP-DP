execute unless entity @e[tag=minion,tag=a_precast,tag=!dying,scores={recover=-1}] unless entity @e[tag=minion,tag=a_precast2,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_precast2,tag=normalcaster2] run scoreboard players set @s casting 19
scoreboard players set @e[tag=minion,tag=a_precast,tag=!dying,scores={recover=-1}] supercasting 25
scoreboard players set @e[tag=minion,tag=a_precast2,tag=!dying,scores={recover=-1}] supercasting 25
scoreboard players set @e[tag=a_precast2,tag=normalcaster2] cardcasting2 25

#检测如果自身技能触发时机不为“释放技能时”，且不存在其他拥有“释放技能时”时机的随从