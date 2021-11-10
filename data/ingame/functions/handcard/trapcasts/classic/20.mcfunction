execute if score @s trapcasting matches 37 run function ingame:handcard/traptest
execute if score @s trapcasting matches 37 unless entity @s[tag=potentialtrap] run scoreboard players set @s trapcasting 0



execute if score @s trapcasting matches 36 run function ingame:trapactivate
execute if score @s trapcasting matches 7..36 at @s run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 10 force

execute if score @s trapcasting matches 7 run tag @s add 123
execute if score @s trapcasting matches 7 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s trapcasting matches 7 as @e[tag=character,tag=pickedtarget] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s trapcasting matches 7 at @s as @e[tag=target] run function ingame:effect/laser_slow_summon
execute if score @s trapcasting matches 7 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=targetmascot] damage
execute if score @s trapcasting matches 7 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage

execute if score @s trapcasting matches 7 run particle minecraft:dust 0.3 1.2 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s trapcasting matches 7 run playsound minecraft:item.totem.use block @a[tag=ingame] ~ ~ ~ 0.8 2 0.8


execute if score @s trapcasting matches 7 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=onturn]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[投毒]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当敌方牌手下一次对一个敌方角色使用一张牌后，对目标角色造成7点伤害。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @e remove targetmascot
tag @e remove target
tag @s remove potentialtrap
tag @e remove pass
tag @s remove 123
