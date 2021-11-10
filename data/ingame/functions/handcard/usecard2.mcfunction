
scoreboard objectives add repeatcount dummy

function ingame:handcard/whichray

execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function ingame:ray



title @s times 0 1 10
execute unless entity @e[tag=hit] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请选择一个目标","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=hit,tag=deny] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"非法目标","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @e[tag=hit,tag=!deny] run function ingame:handcard/usecard3




#scoreboard players set @s rightclick 0
tag @e[tag=hit] remove hit
kill @e[tag=ray]
tag @e remove ray
tag @e remove summon

