
execute as @e[tag=minion] at @s if score @s stun matches 1.. run scoreboard players set @s stunremoving 5

execute unless entity @e[scores={stun=1..},tag=minion] run scoreboard players set @s roundending 3

#检测如果自身技能触发时机不为“回合结束时”，且不存在其他拥有“回合结束时”时机的随从