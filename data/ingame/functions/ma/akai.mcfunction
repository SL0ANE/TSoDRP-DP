execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=at_dmgto,tag=minion,tag=dying] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 if entity @e[tag=target] run particle minecraft:dust 1 0 0 1.6 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 if entity @e[tag=target] run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s casting matches 18 as @e[tag=target] at @s as @e[tag=123] run function ingame:effect/buff_summon
execute if score @s casting matches 18 run scoreboard players set @e[tag=summon3] hp 2
execute if score @s casting matches 18 run scoreboard players set @e[tag=summon3] hplimit 2
execute if score @s casting matches 18 run scoreboard players set @e[tag=summon3] trueattack 2
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"阿凯","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击并击杀一个敌方随从时，使此随从获得+2/+2。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 18 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove target
tag @s remove 123