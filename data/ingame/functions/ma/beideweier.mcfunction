execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 unless score @s attack matches 1.. run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 unless entity @e[tag=target] as @e[scores={dmgtaking=5,hp=1..},tag=minion] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 18 unless entity @e[tag=target] as @e[tag=mascot,scores={dmgtaking=5}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 18 unless entity @e[tag=target] run scoreboard players set @s casting2 1


execute if score @s casting2 matches 12 run tag @s add 123
execute if score @s casting2 matches 12 unless entity @e[tag=target] as @e[scores={dmgtaking=5,hp=1..},tag=minion] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 12 unless entity @e[tag=target] as @e[tag=mascot,scores={dmgtaking=5}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 12 unless entity @e[tag=target] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 12 if entity @e[tag=target] run scoreboard players remove @s trueattack 1
execute if score @s casting2 matches 12 if entity @e[tag=target] run function ingame:minion/hpcheck
execute if score @s casting2 matches 12 if entity @e[tag=target] run particle minecraft:dust 2 0 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting2 matches 12 if entity @e[tag=target] run playsound minecraft:block.conduit.deactivate block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting2 matches 12 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"贝德维尔","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当己方角色受到伤害时，若此随从的攻击力至少为1，则改为使此随从获得-1攻击力。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting2 matches 12 if entity @e[tag=target] run scoreboard players set @e[tag=target] dmgtaking 0
execute if score @s casting2 matches 12 as @e[tag=target] if score @s at_dmgtaken matches 1.. run scoreboard players set @s at_dmgtaken 0
execute if score @s casting2 matches 12 as @e[tag=target] unless score @s at_dmgtaken matches 1.. if score @s dmgtaken matches 1.. run scoreboard players set @s dmgtaken 0
execute if score @s casting2 matches 12 if entity @e[tag=target] run scoreboard players set @s casting2 5


tag @e remove 123
tag @e remove target