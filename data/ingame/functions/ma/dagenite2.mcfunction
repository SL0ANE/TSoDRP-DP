execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 as @e[scores={folding=10}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting2 1

execute if score @s casting2 matches 10 run tag @s add 123
execute if score @s casting2 matches 10 as @e[scores={folding=10}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting2 matches 10 unless entity @e[tag=pass] run scoreboard players set @s casting2 1


execute if score @s casting2 matches 10 if entity @e[tag=pass] as @e[tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting2 matches 10 unless entity @e[tag=pick] as @e[tag=targets,sort=random,limit=1,tag=!dying] run tag @s add pick
execute if score @s casting2 matches 10 unless entity @e[tag=pick] as @e[tag=targets,sort=random,limit=1] run tag @s add pick
execute if score @s casting2 matches 10 at @s as @e[tag=pick] run function ingame:effect/buff_summon
execute if score @s casting2 matches 10 as @e[tag=summon3] run scoreboard players add @s trueattack 2
execute if score @s casting2 matches 10 as @e[tag=summon3] run scoreboard players add @s hp 1
execute if score @s casting2 matches 10 as @e[tag=summon3] run scoreboard players add @s hplimit 1
execute if score @s casting2 matches 10 as @e[tag=pick] at @s run particle minecraft:dust 1 0.3 0 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting2 matches 10 if entity @e[tag=pick] run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting2 matches 10 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"达戈尼特","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你弃置一张牌后，随机使一个己方随从获得+2/+1。每当此随从攻击后，弃置你的牌堆顶的一张牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tag @e remove summon3
tag @e remove targets
tag @e remove pass
tag @e remove pick
tag @s remove 123
