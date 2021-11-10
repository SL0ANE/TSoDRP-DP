execute if score @s cardcasting matches 35 run tag @s add 123
execute if score @s cardcasting matches 35 run tag @e[tag=carduser] add targetmascot
execute if score @s cardcasting matches 35 if score @s round matches 20.. run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"结算中止，因为已经重复了20次！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 35 if score @s round matches 20.. run scoreboard players set @s cardcasting 31
execute if score @s cardcasting matches 35 as @e[tag=carduser] if score @s dcpilecount matches 8.. as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s dcpileorder = @e[tag=carduser,limit=1] dcpilecount run function ingame:insertdeck
execute if score @s cardcasting matches 35 as @e[tag=minion,tag=!cardtarget,tag=!dying,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting matches 35 as @e[tag=cardtarget] at @s positioned ~ ~4 ~ run function ingame:effect/light_buff_summon
execute if score @s cardcasting matches 35 run scoreboard players set @e[tag=summon3] trueattack 1
execute if score @s cardcasting matches 35 run scoreboard players set @e[tag=summon3] hp 2
execute if score @s cardcasting matches 35 run scoreboard players set @e[tag=summon3] hplimit 2
execute if score @s cardcasting matches 35 run tag @e[tag=pass] add forceatktarget
execute if score @s cardcasting matches 35 if entity @e[tag=pass] as @e[tag=cardtarget] run scoreboard players add @s attacktime 1

execute if score @s cardcasting matches 35 run scoreboard players operation @e[tag=summon] minioncode = @e[tag=cardtarget] minioncode

execute if score @s cardcasting matches 32 if score @e[tag=carduser,limit=1] dcpilecount matches 8.. run scoreboard players add @s round 1
execute if score @s cardcasting matches 32 if score @e[tag=carduser,limit=1] dcpilecount matches 8.. run scoreboard players set @s cardcasting 37


execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[倾巢而出]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"使一个随从获得+1/+2，然后令其随机攻击一个敌方随从。若你的弃牌堆数至少为8，则将你弃牌堆底的一张牌置入你的牌堆，然后对相同目标重复一次。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 31 run scoreboard players set @s cardcasting 1

tag @e remove pass
tag @e remove summon
tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123