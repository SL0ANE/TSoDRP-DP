execute if score @s trapcasting matches 37 run function ingame:handcard/traptest
execute if score @s trapcasting matches 37 unless entity @s[tag=potentialtrap] run scoreboard players set @s trapcasting 0



execute if score @s trapcasting matches 36 run function ingame:trapactivate
execute if score @s trapcasting matches 7..36 at @s run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 10 force

execute if score @s trapcasting matches 7 run tag @s add 123
execute if score @s trapcasting matches 7 as @e[tag=mascot,tag=onturn,scores={usingcard=19}] run tag @s add targetmascot
execute if score @s trapcasting matches 7 as @e[tag=targetmascot] run scoreboard players set @s usingcard 2
execute if score @s trapcasting matches 7 as @e[tag=beingused] run tag @s add invalid
execute if score @s trapcasting matches 7 as @e[tag=beingused] run function ingame:insertdeck

execute if score @s trapcasting matches 7 run particle minecraft:dust 0.3 1.2 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s trapcasting matches 7 run playsound minecraft:item.totem.use block @a[tag=ingame] ~ ~ ~ 0.8 2 0.8


execute if score @s trapcasting matches 7 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=onturn]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[黑洞]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当敌方牌手下一次使用一张牌时，将其置入敌方牌手的牌堆并无效之。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=beingused]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"]","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



tag @e remove targetmascot
tag @s remove potentialtrap
tag @e remove pass
tag @s remove 123
