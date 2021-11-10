
execute if score @s casting2 matches 10 run tag @s add 123
execute if score @s casting2 matches 10 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting2 matches 10 run scoreboard players remove @e[tag=targetmascot] manaban 1
execute if score @s casting2 matches 10 as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcards
execute if score @s casting2 matches 10 unless entity @e[tag=pick] as @e[tag=trap,tag=targetcards,limit=1,sort=random] run tag @s add pick
execute if score @s casting2 matches 10 unless entity @e[tag=pick] as @e[tag=targetcards,limit=1,sort=random] run tag @s add pick
execute if score @s casting2 matches 10 as @e[tag=pick] run tag @s add forcedraw
execute if score @s casting2 matches 10 run scoreboard players add @e[tag=targetmascot] drawtime 1



execute if score @s casting2 matches 10 run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting2 matches 10 run particle minecraft:dust 0.4 0.6 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting2 matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"白羊座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的陷阱牌触发后，使你下回合的起始能量+1，并令你抽一张陷阱牌，若你的牌堆中没有陷阱牌，则改为令你抽一张牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting2 matches 10 run scoreboard players set @s casting2 5


tag @e remove targetmascot
tag @e remove targetcards
tag @e remove pick
tag @s remove 123