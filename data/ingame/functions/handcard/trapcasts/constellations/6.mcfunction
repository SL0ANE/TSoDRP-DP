execute if score @s trapcasting matches 37 run function ingame:handcard/traptest
execute if score @s trapcasting matches 37 unless entity @s[tag=potentialtrap] run scoreboard players set @s trapcasting 0



execute if score @s trapcasting matches 36 run function ingame:trapactivate
execute if score @s trapcasting matches 7..36 at @s run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 10 force

execute if score @s trapcasting matches 7 run tag @s add 123
execute if score @s trapcasting matches 7 as @e[tag=minion,scores={attacking=36}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s trapcasting matches 7 as @e[tag=targetminion] run summon minecraft:marker ~ ~1 ~ {Tags:["normalcaster2","caster2","summon","a_subendround2","constellations","6","a_halo"],Potion:CBC,Age:0,Duration:10000,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute if score @s trapcasting matches 7 run scoreboard players operation @e[tag=summon] minioncode = @e[tag=targetminion] minioncode
execute if score @s trapcasting matches 7 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s trapcasting matches 7 run scoreboard players operation @e[tag=summon] number = @e[tag=targetminion] attack
execute if score @s trapcasting matches 7 at @s as @e[tag=targetminion] run function ingame:effect/frost_summon


execute if score @s trapcasting matches 7 run particle minecraft:dust 0.3 1.2 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s trapcasting matches 7 run playsound minecraft:item.totem.use block @a[tag=ingame] ~ ~ ~ 0.8 2 0.8


execute if score @s trapcasting matches 7 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=onturn]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[极寒虚空]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当敌方随从下一次攻击时，眩晕之，然后将其攻击力变为0，直到回合结束。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetminion]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @e remove summon3
tag @e remove summon
tag @e remove targetminion
tag @s remove potentialtrap
tag @e remove pass
tag @s remove 123
