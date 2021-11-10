
execute if score @s casting matches 18 run tag @s add 123


execute if score @s casting matches 18 as @e[tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 18 unless entity @e[tag=pick] as @e[tag=targets,limit=1,sort=random,tag=!dying,tag=!block] run tag @s add pick
execute if score @s casting matches 18 unless entity @e[tag=pick] as @e[tag=targets,limit=1,sort=random,tag=!dying,tag=block,scores={blocktime=1..4}] run tag @s add pick
execute if score @s casting matches 18 unless entity @e[tag=pick] as @e[tag=targets,limit=1,sort=random,tag=!block] run tag @s add pick
execute if score @s casting matches 18 unless entity @e[tag=pick] as @e[tag=targets,limit=1,sort=random,tag=block,scores={blocktime=1..4}] run tag @s add pick
execute if score @s casting matches 18 unless entity @e[tag=pick] run scoreboard players set @s casting 1
execute if score @s casting matches 18 at @s as @e[tag=pick,tag=!123] run function ingame:effect/buff_summon
execute if score @s casting matches 18 as @e[tag=pick,tag=123] at @s positioned ~ ~1 ~ run function ingame:effect/buff_summon
execute if score @s casting matches 18 as @e[tag=summon3] run tag @s add block
execute if score @s casting matches 18 as @e[tag=pick] at @s run particle minecraft:dust 0 2 1 2 ~ ~0.2 ~ 0.3 0.3 0.3 0 30 force

execute if score @s casting matches 18 run playsound minecraft:block.barrel.close block @a[tag=ingame] ~ ~ ~ 3 2 1

execute if score @s casting matches 18 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"聂","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，随机使一个己方随从获得【格挡】。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tag @e remove summon3
tag @e remove targets
tag @e remove pick
tag @s remove 123