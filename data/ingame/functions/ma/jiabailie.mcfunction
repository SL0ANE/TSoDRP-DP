execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 if score system round matches 7.. unless entity @e[tag=target] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby as @e[tag=minion,scores={recover=-1..}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1



execute if score @s casting matches 15 run tag @s add 123
execute if score @s casting matches 15 if score system round matches 7.. unless entity @e[tag=target] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby as @e[tag=minion,scores={recover=-1..}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 15 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 15 as @e[tag=target,scores={recover=-1}] run function ingame:effect/kill_summon

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 if score system round matches 7.. unless entity @e[tag=target] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby as @e[tag=minion,scores={recover=-1..}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 as @e[tag=target,scores={recover=1..}] run scoreboard players set @s recover 3
execute if score @s casting matches 10 as @e[tag=target] at @s run particle minecraft:dust 0 0 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:block.fire.extinguish block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:entity.evoker.prepare_attack block @a[tag=ingame] ~ ~ ~ 3 1.65 1
execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"加百列","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，若轮数大于等于7，则消灭所有敌方随从，然后将所有休眠的敌方随从变为3层休眠。每局限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 if entity @e[tag=target] run tag @s add casted
execute if score @s casting matches 10 as @e[tag=target] at @s run function ingame:minion/hpcheck

execute if score @s casting matches 10 run scoreboard objectives remove runcount

tag @e remove summon3
tag @e remove target
tag @s remove 123
