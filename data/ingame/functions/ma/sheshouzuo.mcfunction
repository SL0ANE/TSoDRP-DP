execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=mascot,scores={roundusedcard=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1
execute if score @s casting matches 18 run playsound minecraft:item.crossbow.quick_charge_2 block @a[tag=ingame] ~ ~ ~ 3 0.4 1

execute if score @s casting matches 16 run tag @s add 123
execute if score @s casting matches 16 as @e[tag=mascot,scores={roundusedcard=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 16 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1
execute if score @s casting matches 16 run particle minecraft:dust 0.1 0.8 0.99 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 16 store result score @s round run scoreboard players get @e[tag=targetmascot,limit=1] roundusedcard
execute if score @s casting matches 16 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"射手座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，若你于本回合内已使用过牌，则随机对一个敌方角色造成1点伤害，且每额外使用一张牌，便重复一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]





execute if score @s casting matches 8 run tag @s add 123
execute if score @s casting matches 8 if score @s round matches 1.. run scoreboard players remove @s round 1
execute if score @s casting matches 8 unless entity @e[tag=targets] as @e[tag=character,tag=!dying,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 8 unless entity @e[tag=targets] as @e[tag=character,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 8 unless entity @e[tag=hit] as @e[tag=targets,limit=1,sort=random] run tag @s add hit
execute if score @s casting matches 8 at @s as @e[tag=hit] run function ingame:effect/arrow2_summon
execute if score @s casting matches 8 run scoreboard players set @e[tag=summon3] dmgtaken 1
execute if score @s casting matches 8 if score @s round matches 1.. run scoreboard players set @s casting 14
execute if score @s casting matches 8 unless score @s round matches 1.. run scoreboard players set @s casting 5
execute if score @s casting matches 5 unless score @s round matches 1.. run scoreboard players reset @s round

tag @e remove summon3
tag @e remove targets
tag @e remove hit
tag @e remove targetmascot
tag @s remove 123
