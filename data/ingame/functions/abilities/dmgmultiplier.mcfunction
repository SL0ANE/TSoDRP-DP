tag @e[tag=mascot,tag=onturn] add 789
execute as @e[tag=trapcaster] unless score @s ownedby = @e[tag=789,limit=1] ownedby run function ingame:handcard/traptest
execute unless entity @e[tag=potentialtrap] if entity @s[tag=!a_dmgmultiplier,scores={recover=-1}] unless entity @e[tag=a_dmgmultiplier2,scores={recover=-1,dying=0}] unless entity @e[tag=a_dmgmultiplier2,tag=normalcaster2] run scoreboard players set @s dmgtaking 5
scoreboard players set @s[tag=a_dmgmultiplier,scores={recover=-1}] casting2 25
scoreboard players set @e[tag=a_dmgmultiplier2,scores={recover=-1,dying=0}] casting2 25
scoreboard players set @e[tag=a_dmgmultiplier2,tag=normalcaster3] cardcasting3 25
scoreboard players set @e[tag=a_dmgmultiplier2,tag=potentialtrap] trapcasting 40
tag @e remove potentialtrap
tag @e[tag=mascot,tag=onturn] remove 789
#检测如果自身技能触发时机不为“受到治疗时”，且不存在其他拥有“受到治疗时”时机的随从