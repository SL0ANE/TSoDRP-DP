execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=minion,scores={recover=-1},tag=!dying] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add category1
execute if score @s cardcasting matches 38 unless entity @e[tag=pick] as @e[tag=category1,limit=1,sort=random] run tag @s add pick
execute if score @s cardcasting matches 38 if entity @e[tag=pick] as @e[tag=!pick,tag=character,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 38 unless entity @e[tag=hit] as @e[tag=target,limit=1,sort=random,scores={recover=-1},tag=!dying] run tag @s add hit
execute if score @s cardcasting matches 38 unless entity @e[tag=hit] as @e[tag=target,limit=1,sort=random,scores={recover=-1}] run tag @s add hit
execute if score @s cardcasting matches 38 unless entity @e[tag=hit] run kill @s
execute if score @s cardcasting matches 38 run tag @e[tag=hit] add forceatktarget
execute if score @s cardcasting matches 38 if entity @e[tag=hit] run scoreboard players add @e[tag=pick] attacktime 1

execute if score @s cardcasting matches 38 if entity @e[tag=pick] run particle minecraft:dust 1.6 0.1 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=pick] run playsound minecraft:entity.witch.celebrate block @a[tag=ingame] ~ ~ ~ 3 1.7 1
execute if score @s cardcasting matches 38 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"贝尔芬格","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从于敌方回合阵亡后，随机令一个敌方随从攻击另一个敌方角色。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run kill @s


tag @s remove 123
tag @e remove pick
tag @e remove hit
tag @e remove target
tag @e remove category1