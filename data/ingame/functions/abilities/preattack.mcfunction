tag @e[tag=mascot,tag=onturn] add 789
execute as @e[tag=trapcaster] unless score @s ownedby = @e[tag=789,limit=1] ownedby run function ingame:handcard/traptest
execute unless entity @e[tag=potentialtrap] unless entity @s[tag=a_preattack,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_preattack2,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_preattack2,tag=normalcaster2] run scoreboard players set @s attacking 35
scoreboard players set @s[tag=a_preattack,tag=!dying,scores={recover=-1}] casting 25
scoreboard players set @e[tag=a_preattack2,tag=!dying,scores={recover=-1}] casting 25
scoreboard players set @e[tag=a_preattack2,tag=normalcaster2] cardcasting2 25
scoreboard players set @e[tag=a_preattack2,tag=potentialtrap] trapcasting 40
tag @e remove potentialtrap
tag @e[tag=mascot,tag=onturn] remove 789
#检测如果自身技能触发时机不为“攻击时”，且不存在其他拥有“攻击时”时机的随从