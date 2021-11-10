execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 run scoreboard players operation @s round = @s attack
execute if score @s casting matches 18 if score @s round matches ..0 run scoreboard players set @s casting 1
execute if score @s casting matches 18 run particle minecraft:dust 0 1 0 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 18 run playsound minecraft:item.crossbow.quick_charge_2 block @a[tag=ingame] ~ ~ ~ 3 0.4 1

execute if score @s casting matches 8 run tag @s add 123
execute if score @s casting matches 8 if score @s round matches 1.. unless entity @e[tag=targets] as @e[tag=character,tag=!dying,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 8 if score @s round matches 1.. unless entity @e[tag=targets] as @e[tag=character,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 8 run tag @e[tag=targets,limit=1,sort=random] add pick
execute if score @s casting matches 8 as @e[tag=pick] at @s run function ingame:effect/scratch_summon
execute if score @s casting matches 8 run scoreboard players set @e[tag=summon3] dmgtaken 1
execute if score @s casting matches 8 run tag @e[tag=pick] add shichenghit
execute if score @s casting matches 8 run scoreboard players remove @s round 1
execute if score @s casting matches 8 if score @s round matches 1.. run scoreboard players set @s casting 10

execute if score @s casting matches 7 if entity @e[tag=shichenghit] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"师承","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从阵亡后，造成等同于此随从攻击力的伤害，随机分配到所有敌方角色身上。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=shichenghit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 7 run scoreboard players reset @s round
execute if score @s casting matches 7 run tag @e remove shichenghit

tag @e remove summon3
tag @e remove pick
tag @e remove targets
tag @s remove 123