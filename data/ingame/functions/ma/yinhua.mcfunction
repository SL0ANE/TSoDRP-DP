execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 unless entity @e[tag=target] as @e[scores={dmgtaking=5,hp=1..},tag=!123,tag=minion] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 18 unless entity @e[tag=target] as @e[scores={dmgtaking=5},tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 18 unless entity @e[tag=target] run scoreboard players set @s casting2 1

execute if score @s casting2 matches 10 run tag @s add 123
execute if score @s casting2 matches 10 unless entity @e[tag=target] as @e[scores={dmgtaking=5,hp=1..},tag=!123,tag=minion] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 10 unless entity @e[tag=target] as @e[scores={dmgtaking=5},tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 10 unless entity @e[tag=target] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 10 if entity @e[scores={at_dmgtaken=1..},tag=target,tag=atktarget] run tag @s add atktarget
execute if score @s casting2 matches 10 if entity @e[scores={at_dmgtaken=1..},tag=target,tag=atktarget] run tag @e[tag=target] remove atktarget
execute if score @s casting2 matches 10 if entity @e[scores={at_dmgtaken=1..},tag=target,tag=at_dmgto] run tag @s add at_dmgto
execute if score @s casting2 matches 10 if entity @e[scores={at_dmgtaken=1..},tag=target,tag=at_dmgto] run tag @e[tag=target] remove at_dmgto
execute if score @s casting2 matches 10 at @e[tag=target] run function ingame:effect/debuff_summon

execute if score @s casting2 matches 10 as @e[tag=summon3] if entity @e[tag=target,scores={at_dmgtaken=1..}] run scoreboard players operation @s hp -= @e[tag=target] at_dmgtaken
execute if score @s casting2 matches 10 as @e[tag=summon3] unless entity @e[tag=target,scores={at_dmgtaken=1..}] if entity @e[tag=target,scores={dmgtaken=1..}] run scoreboard players operation @s hp -= @e[tag=target] dmgtaken

execute if score @s casting2 matches 10 if entity @e[tag=target] run particle minecraft:dust 2 0 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting2 matches 10 if entity @e[tag=target] run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting2 matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"银花","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当其他己方角色受到伤害时，改为此随从失去等量生命。若此伤害为攻击伤害，则改变攻击目标为此随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting2 matches 10 if entity @e[tag=target] run scoreboard players set @e[tag=target] dmgtaking 0
execute if score @s casting2 matches 10 as @e[tag=target] if score @s at_dmgtaken matches 1.. run scoreboard players set @s at_dmgtaken 0
execute if score @s casting2 matches 10 as @e[tag=target] unless score @s at_dmgtaken matches 1.. if score @s dmgtaken matches 1.. run scoreboard players set @s dmgtaken 0
execute if score @s casting2 matches 10 if entity @e[tag=target] run scoreboard players set @s casting2 5
tag @e remove 123
tag @e remove target
tag @e remove summon3