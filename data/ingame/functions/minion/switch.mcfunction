tag @s add click
scoreboard objectives add repeatcount dummy

summon minecraft:marker ~ ~1 ~ {Tags:["ray","search","s_minion"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function ingame:ray
execute as @e[tag=hit,tag=minion] unless score @s minionboard matches 2 as @e[tag=minion,scores={minionboard=2}] if score @s ownedby = @e[tag=minion,tag=hit,limit=1] ownedby run tag @s add switchto

execute unless score @e[tag=targetmascot,limit=1] mana matches 1.. if entity @e[tag=hit,tag=minion] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"能量不足","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @e[tag=targetmascot,limit=1] mana matches 1.. as @e[tag=hit,tag=minion] if score @s minionboard matches 2 run title @a[tag=click] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请选择两侧的随从","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @e[tag=targetmascot,limit=1] mana matches 1.. as @e[tag=hit,tag=minion] at @s unless score @s ownedby = @a[tag=click,limit=1] playernumber run title @a[tag=click] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无权操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @e[tag=targetmascot,limit=1] mana matches 1.. as @e[tag=hit,tag=minion] at @s unless score @s minionboard matches 2 if score @s ownedby = @a[tag=click,limit=1] playernumber run tag @s add switchfrom



tag @e[tag=switchfrom] add test
tag @e[tag=switchto] add test


execute if score @e[tag=targetmascot,limit=1] mana matches 1.. unless entity @e[tag=test,tag=!stun,scores={recover=-1}] if entity @e[tag=switchfrom] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法主动或被动换位","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @e[tag=targetmascot,limit=1] mana matches 1.. if entity @e[tag=test,tag=!stun,scores={recover=-1}] as @e[tag=switchfrom] run function ingame:minion/switch2




tag @e remove test
tag @e remove switchfrom
tag @e remove switchto

execute if entity @e[tag=hit,tag=endround] run scoreboard players set @e[tag=targetmascot] roundending 24
execute if entity @e[tag=hit,tag=endround] if entity @e[tag=targetmascot] run data merge entity @e[tag=endround,limit=1] {CustomName:"[{\"text\":\"回合结束\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
tag @e[tag=hit] remove hit
kill @e[tag=ray]
tag @s remove click


