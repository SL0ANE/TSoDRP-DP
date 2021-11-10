execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=carduser] if score @s dcpilecount matches 8.. run scoreboard players operation @e[tag=123,limit=1] round = @e[tag=carduser] dcpilecount
execute if score @s cardcasting matches 38 as @e[tag=carduser] unless score @s dcpilecount matches 8.. run scoreboard players operation @e[tag=123,limit=1] round = @e[tag=carduser] handcardcount
execute if score @s cardcasting matches 38 run scoreboard players operation @s round += @e[tag=carduser] damage
execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[人海战术]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"造成等同于你的手牌数的伤害，随机分配到所有敌方角色身上。若你的弃牌堆中有至少8张牌，则改为你的弃牌堆数。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 if score @s round matches 1.. run scoreboard players set @s cardcasting 37
execute if score @s cardcasting matches 38 unless score @s round matches 1.. run scoreboard players set @s cardcasting 1

execute if score @s cardcasting matches 35 run tag @s add 123
execute if score @s cardcasting matches 35 unless entity @e[tag=target] as @e[tag=character,scores={recover=-1},tag=!dying] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 35 unless entity @e[tag=target] as @e[tag=character,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 35 as @e[tag=target,limit=1,sort=random] run tag @s add pick
execute if score @s cardcasting matches 35 at @s as @e[tag=pick] run function ingame:effect/laser_fast_summon
execute if score @s cardcasting matches 35 run scoreboard players add @e[tag=summon3] dmgtaken 1
execute if score @s cardcasting matches 35 run scoreboard players remove @s round 1
execute if score @s cardcasting matches 35 if score @s round matches 1.. run scoreboard players set @s cardcasting 37
execute if score @s cardcasting matches 35 unless score @s round matches 1.. run scoreboard players set @s cardcasting 1



execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove pick
tag @e remove target
tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123