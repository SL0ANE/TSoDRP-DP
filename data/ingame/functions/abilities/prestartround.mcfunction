tag @s add 678
tag @e[tag=mascot,tag=onturn] add 789
execute as @e[tag=trapcaster] unless score @s ownedby = @e[tag=789,limit=1] ownedby run function ingame:handcard/traptest
execute unless entity @e[tag=potentialtrap] unless entity @e[tag=a_prestartround,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_prestartround2,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_prestartround2,tag=normalcaster2] run scoreboard players set @s roundstarting 10
execute as @e[tag=a_prestartround,tag=!dying,scores={recover=-1}] if score @s ownedby = @e[tag=678,limit=1] ownedby run scoreboard players set @s casting 25
scoreboard players set @e[tag=a_prestartround2,tag=!dying,scores={recover=-1}] casting 25
scoreboard players set @e[tag=a_prestartround2,tag=normalcaster2] cardcasting2 25
scoreboard players set @e[tag=a_prestartround2,tag=potentialtrap] trapcasting 40
tag @e remove potentialtrap
tag @e[tag=mascot,tag=onturn] remove 789
tag @s remove 678
#检测如果自身技能触发时机不为“回合开始时”，且不存在其他拥有“回合开始时”时机的随从

#a_prestartround  代表己方回合开始时