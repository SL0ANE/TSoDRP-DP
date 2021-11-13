execute if score @s trapcasting matches 37 run function ingame:handcard/traptest
execute if score @s trapcasting matches 37 unless entity @s[tag=potentialtrap] run scoreboard players set @s trapcasting 0



execute if score @s trapcasting matches 36 run function ingame:trapactivate
execute if score @s trapcasting matches 7..36 at @s run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 10 force

execute if score @s trapcasting matches 7 run tag @s add 123
execute if score @s trapcasting matches 7 as @e[tag=character,scores={recover=-1,dmgtaking=3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add source
execute if score @s trapcasting matches 7 as @e[tag=character,scores={recover=-1,dmgtaking=3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s trapcasting matches 7 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s trapcasting matches 7 at @s as @e[tag=target] run function ingame:effect/healer_summon
execute if score @s trapcasting matches 7 as @e[tag=summon3] run scoreboard players operation @s healtaken += @e[tag=source] at_dmgtaken

execute if score @s trapcasting matches 7 as @e[tag=summon3] run scoreboard players operation @s healtaken += @e[tag=source] dmgtaken


execute if score @s trapcasting matches 7 run particle minecraft:dust 0.3 1.2 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s trapcasting matches 7 run playsound minecraft:item.totem.use block @a[tag=ingame] ~ ~ ~ 0.8 2 0.8

execute if score @s trapcasting matches 7 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=onturn]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[占星]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当己方角色下一次受到伤害后，为其和你恢复等量生命。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tag @e remove summon3
tag @e remove source
tag @e remove target
tag @s remove potentialtrap
tag @e remove pass
tag @s remove 123
