tag @e[tag=mascot,tag=onturn] add 789
execute as @e[tag=trapcaster] unless score @s ownedby = @e[tag=789,limit=1] ownedby run function ingame:handcard/traptest
execute unless entity @e[tag=potentialtrap] unless entity @s[tag=a_subdmgtake,scores={recover=-1}] unless entity @e[tag=a_subdmgtake2,scores={recover=-1}] unless entity @e[tag=a_subdmgtake2,tag=normalcaster2] run scoreboard players set @s dmgtaking 2
scoreboard players set @s[tag=a_subdmgtake,scores={recover=-1}] casting2 25
scoreboard players set @e[tag=a_subdmgtake2,scores={recover=-1}] casting2 25
scoreboard players set @e[tag=a_subdmgtake2,tag=normalcaster2] cardcasting2 25
scoreboard players set @e[tag=a_subdmgtake2,tag=potentialtrap] trapcasting 40
tag @e remove potentialtrap
tag @e[tag=mascot,tag=onturn] remove 789
#检测如果自身技能触发时机不为“造成伤害时”，且不存在其他拥有“造成伤害时”时机的随从