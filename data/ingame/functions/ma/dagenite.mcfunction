execute if score @s casting matches 18 run tag @s add 123 
execute if score @s casting matches 18 as @e[tag=card,scores={cardorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123 
execute if score @s casting matches 10 as @e[tag=card,scores={cardorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 10 unless entity @e[tag=pass] run scoreboard players set @s casting 1

execute if score @s casting matches 10 as @e[tag=pass] run tag @s add folding

execute if score @s casting matches 10 run particle minecraft:dust 0.1 0.6 0.1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"达戈尼特","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你弃置一张牌后，随机使一个己方随从获得+2/+1。每当此随从攻击后，弃置你的牌堆顶的一张牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 run scoreboard players set @s casting 5


tag @e remove pass
tag @s remove 123