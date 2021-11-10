execute if score @s trapcasting matches 37 run function ingame:handcard/traptest
execute if score @s trapcasting matches 37 unless entity @s[tag=potentialtrap] run scoreboard players set @s trapcasting 0



execute if score @s trapcasting matches 36 run function ingame:trapactivate
execute if score @s trapcasting matches 7..36 at @s run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 10 force

execute if score @s trapcasting matches 7 run tag @s add 123
execute if score @s trapcasting matches 7 as @e[tag=minion,scores={dying=145}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s trapcasting matches 7 unless entity @e[tag=targets] as @e[tag=minion,scores={recover=-1},tag=!dying] unless score @s ownedby = @e[tag=pass,limit=1] ownedby run tag @s add targets
execute if score @s trapcasting matches 7 as @e[tag=targets,limit=1,sort=random] run tag @s add targetminion
execute if score @s trapcasting matches 7 at @e[tag=targetminion] run particle minecraft:dust 0.3 1.2 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s trapcasting matches 7 run playsound minecraft:item.totem.use block @a[tag=ingame] ~ ~ ~ 0.8 2 0.8

execute if score @s trapcasting matches 7 as @e[tag=targetminion] at @s run function ingame:effect/kill_summon


execute if score @s trapcasting matches 7 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=onturn]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[九星连诛]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当己方随从下一次阵亡时，随机消灭一个敌方随从。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetminion]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



tag @e remove summon3
tag @s remove potentialtrap
tag @e remove targetminion
tag @e remove targets
tag @e remove pass
tag @s remove 123
