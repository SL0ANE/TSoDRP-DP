execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=minion,scores={recover=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s cardcasting matches 38 if entity @e[tag=targetminion] as @e[tag=trapcaster] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting matches 38 store result score @s round if entity @e[tag=pass]
execute if score @s cardcasting matches 38 run scoreboard players add @s round 1
execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[星光迷离]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"随机使一个己方随从减少1层休眠。场上每有一张你的陷阱牌，便重复一次。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 unless score @s round matches 1.. run scoreboard players set @s cardcasting 1

execute if score @s cardcasting matches 20 run tag @s add 123
execute if score @s cardcasting matches 20 as @e[tag=minion,scores={recover=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s cardcasting matches 20 if score @s round matches 1.. if entity @e[tag=targetminion] as @e[tag=targetminion,limit=1,sort=random] run tag @s add pick
execute if score @s cardcasting matches 20 as @e[tag=pick] run scoreboard players set @s rcvremoving 5
execute if score @s cardcasting matches 20 as @e[tag=pick] run playsound minecraft:block.barrel.open block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting matches 20 as @e[tag=pick] at @s run particle minecraft:dust 0.8 0.4 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 20 if score @s round matches 1.. if entity @e[tag=targetminion] run scoreboard players remove @s round 1
execute if score @s cardcasting matches 20 unless score @s round matches 1.. run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 20 unless entity @e[tag=targetminion] run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 20 if score @s round matches 1.. run scoreboard players set @s cardcasting 36
execute if score @s cardcasting matches 18 run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 1 run scoreboard players reset @s round


tag @e remove pick
tag @e remove targetminion
tag @e remove pass
tag @s remove 123