execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 if entity @e[tag=beingused] unless entity @e[tag=target] as @e[scores={usingcard=1..},tag=mascot,tag=onturn] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 if entity @e[tag=beingused] unless entity @e[tag=target] as @e[scores={usingcard=1..},tag=mascot,tag=onturn] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 run scoreboard players set @e[tag=target] usingcard 2
execute if score @s casting matches 10 run tag @e[tag=beingused] add invalid
execute if score @s casting matches 10 run tag @e[tag=beingused] add removed
execute if score @s casting matches 10 run tag @e[tag=beingused] add removed_by_kai
execute if score @s casting matches 10 as @e[tag=beingused] run function ingame:removefromgame
execute if score @s casting matches 10 run summon minecraft:marker ~ ~0.5 ~ {Tags:["caster2","normalcaster2","kai","minioncaster","summon","a_preendround2"]}
execute if score @s casting matches 10 run scoreboard players operation @e[tag=summon] ownedby = @e[tag=target] ownedby
execute if score @s casting matches 10 if entity @e[tag=target] run tag @s add casted2
execute if score @s casting matches 10 if entity @e[tag=target] as @e[tag=card,scores={cardorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add folding

execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 at @e[tag=target] run particle minecraft:dust 0 1.4 0.8 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force


execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"?????????","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"???","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????"}},{"text":"???????????????","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"?????????","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=beingused]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"]","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @s remove 123
tag @e remove target
tag @e remove summon