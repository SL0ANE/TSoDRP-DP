execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,tag=atktarget,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1
execute if score @s casting matches 18 if score @s minionboard matches 1 as @e[tag=minion,scores={minionboard=2,recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s casting matches 18 if score @s minionboard matches 3 as @e[tag=minion,scores={minionboard=2,recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s casting matches 18 if score @s minionboard matches 2 as @e[tag=minion,scores={minionboard=1,recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s casting matches 18 if score @s minionboard matches 2 as @e[tag=minion,scores={minionboard=3,recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s casting matches 18 if entity @e[tag=targetminion] as @e[tag=pass] run tag @s add forceatktarget
execute if score @s casting matches 18 run scoreboard players add @e[tag=targetminion] attacktime 1

execute if score @s casting matches 18 unless entity @e[tag=targetminion] run tag @s add addaggressive
execute if score @s casting matches 18 unless entity @e[tag=targetminion] run scoreboard players set @s aggressivetime 5

execute if score @s casting matches 18 run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 18 at @e[tag=targetminion] run particle minecraft:dust 1.8 0.2 0 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 18 unless entity @e[tag=targetminion] run particle minecraft:dust 0.8 0.6 0 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 18 if entity @e[tag=targetminion] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"狮子座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击一个敌方随从后，令此随从的相邻随从攻击目标随从，若没有存活的相邻随从，则使此随从获得【暴走】。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetminion]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 18 unless entity @e[tag=targetminion] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"狮子座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击一个敌方随从后，令此随从的相邻随从攻击目标随从，若没有存活的相邻随从，则使此随从获得【暴走】。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s casting matches 18 run scoreboard players set @s casting 5

tag @e remove pass
tag @e remove targetminion
tag @s remove 123