execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=targetmascot] as @e[tag=mascot,scores={mana=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 18 unless entity @e[tag=target] as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1


execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 unless entity @e[tag=targetmascot] as @e[tag=mascot,scores={mana=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 10 unless entity @e[tag=target] as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=1..}] unless entity @e[tag=hit1] as @e[tag=!hit,tag=target,sort=random,limit=1,tag=!dying] unless score @s stun matches 3.. run tag @s add hit1
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=1..}] unless entity @e[tag=hit1] as @e[tag=!hit,tag=target,sort=random,limit=1,tag=!dying] run tag @s add hit1
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=1..}] unless entity @e[tag=hit1] as @e[tag=!hit,tag=target,sort=random,limit=1] run tag @s add hit1
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=1..}] run tag @e[tag=hit1] add hit
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=2..}] unless entity @e[tag=hit2] as @e[tag=!hit,tag=target,sort=random,limit=1,tag=!dying] unless score @s stun matches 3.. run tag @s add hit2
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=2..}] unless entity @e[tag=hit2] as @e[tag=!hit,tag=target,sort=random,limit=1,tag=!dying] run tag @s add hit2
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=2..}] unless entity @e[tag=hit2] as @e[tag=!hit,tag=target,sort=random,limit=1] run tag @s add hit2
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=2..}] run tag @e[tag=hit2] add hit
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=3..}] unless entity @e[tag=hit3] as @e[tag=!hit,tag=target,sort=random,limit=1,tag=!dying] unless score @s stun matches 3.. run tag @s add hit3
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=3..}] unless entity @e[tag=hit3] as @e[tag=!hit,tag=target,sort=random,limit=1,tag=!dying] run tag @s add hit3
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=3..}] unless entity @e[tag=hit3] as @e[tag=!hit,tag=target,sort=random,limit=1] run tag @s add hit3
execute if score @s casting matches 10 as @e[tag=targetmascot,scores={mana=3..}] run tag @e[tag=hit3] add hit
execute if score @s casting matches 10 as @e[tag=hit] run function ingame:effect/frost_summon
execute if score @s casting matches 10 at @e[tag=hit] run particle minecraft:dust 0.1 0.8 0.99 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 if entity @e[tag=hit] run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 10 if entity @e[tag=hit] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"冰封雷塞","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，你每有1点能量，便随机眩晕一个敌方随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123
tag @e remove target
tag @e remove hit
tag @e remove hit1
tag @e remove hit2
tag @e remove hit3