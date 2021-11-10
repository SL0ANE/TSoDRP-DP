execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=pass] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 unless entity @e[tag=pass] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 10 unless entity @e[tag=pass] run scoreboard players set @s casting 1
execute if score @s casting matches 10 as @e[tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target


execute if score @s casting matches 10 if score @s[scores={ownedby=1}] minionboard matches 3 run tag @e[tag=target,scores={minionboard=2}] add pick
execute if score @s casting matches 10 if score @s[scores={ownedby=1}] minionboard matches 2 run tag @e[tag=target,scores={minionboard=1}] add pick
execute if score @s casting matches 10 if score @s[scores={ownedby=2}] minionboard matches 1 run tag @e[tag=target,scores={minionboard=2}] add pick
execute if score @s casting matches 10 if score @s[scores={ownedby=2}] minionboard matches 2 run tag @e[tag=target,scores={minionboard=3}] add pick

execute if score @s casting matches 10 as @e[tag=pick] run function ingame:effect/buff_summon
execute if score @s casting matches 10 if entity @e[tag=pick] as @e[tag=summon3] run tag @s add puzzle
execute if score @s casting matches 10 if entity @e[tag=pick] run scoreboard players set @e[tag=summon3] trueattack 1
execute if score @s casting matches 10 if entity @e[tag=pick] run scoreboard players set @e[tag=summon3] hp 1
execute if score @s casting matches 10 if entity @e[tag=pick] run scoreboard players set @e[tag=summon3] hplimit 1

execute if score @s casting matches 10 unless entity @e[tag=pick] at @s positioned ~ ~4 ~ run function ingame:effect/light_buff_summon
execute if score @s casting matches 10 unless entity @e[tag=pick] run scoreboard players set @e[tag=summon3] trueattack 2
execute if score @s casting matches 10 unless entity @e[tag=pick] run scoreboard players set @e[tag=summon3] hp 2
execute if score @s casting matches 10 unless entity @e[tag=pick] run scoreboard players set @e[tag=summon3] hplimit 2

execute if score @s casting matches 10 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"土豆亲王","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，使此随从左侧的相邻随从获得【玄惑】和+1/+1，若没有目标，则使此随从获得+2/+2。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 unless entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"土豆亲王","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，使此随从左侧的相邻随从获得【玄惑】和+1/+1，若没有目标，则使此随从获得+2/+2。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 10 at @e[tag=pick] run particle minecraft:dust 1 1 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 unless entity @e[tag=pick] run particle minecraft:dust 1 1 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run particle minecraft:dust 0.9 0.6 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force

execute if score @s casting matches 10 run playsound block.beacon.activate block @a[tag=ingame] ~ ~ ~ 3 1.3 1

tag @e remove summon3
tag @e remove pick
tag @e remove target
tag @e remove pass
tag @s remove 123