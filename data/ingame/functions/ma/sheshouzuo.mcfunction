execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby if score @s minionboard = @e[tag=123,limit=1] minionboard run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 run playsound minecraft:item.crossbow.quick_charge_2 block @a[tag=ingame] ~ ~ ~ 3 0.4 1

execute if score @s casting matches 12 run tag @s add 123
execute if score @s casting matches 12 as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby if score @s minionboard = @e[tag=123,limit=1] minionboard run tag @s add target
execute if score @s casting matches 12 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 12 at @s as @e[tag=target] run function ingame:effect/arrow2_summon
execute if score @s casting matches 12 run summon minecraft:marker ~ ~1 ~ {Tags:["dmg1","summon"]}
execute if score @s casting matches 12 run summon minecraft:marker ~ ~1 ~ {Tags:["dmg2","summon"]}
execute if score @s casting matches 12 run summon minecraft:marker ~ ~1 ~ {Tags:["dmg3","summon"]}
execute if score @s casting matches 12 run tag @e[tag=summon,limit=1,sort=random] add pick
execute if score @s casting matches 12 if entity @e[tag=summon,tag=pick,tag=dmg1] run scoreboard players add @e[tag=summon3] dmgtaken 1
execute if score @s casting matches 12 if entity @e[tag=summon,tag=pick,tag=dmg2] run scoreboard players add @e[tag=summon3] dmgtaken 2
execute if score @s casting matches 12 if entity @e[tag=summon,tag=pick,tag=dmg3] run scoreboard players add @e[tag=summon3] dmgtaken 3

execute if score @s casting matches 12 run particle minecraft:dust 0.1 0.8 0.99 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 12 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"射手座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从换位时，对其对位随从造成等同于此随从攻击力的伤害。每当此随从换位后，对其对位随从造成等同于其攻击力的伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 12 run scoreboard players set @s casting 5
kill @e[tag=summon]

tag @e remove summon
tag @e remove summon3
tag @e remove target
tag @s remove 123
