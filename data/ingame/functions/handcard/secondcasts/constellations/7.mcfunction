execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,tag=onturn,scores={drawing=10}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s cardcasting2 1
execute if score @s cardcasting2 matches 18 as @e[tag=card,scores={cardorder=1..2}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcards
execute if score @s cardcasting2 matches 18 as @e[tag=card,scores={cardorder=1..2}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add discovered
execute if score @s cardcasting2 matches 18 unless entity @e[tag=discovered] run scoreboard players set @s cardcasting2 1




execute if score @s cardcasting2 matches 18 if entity @e[tag=discovered] run function ingame:discover

execute if score @s cardcasting2 matches 18 if entity @e[tag=discovered] run scoreboard players set @e[tag=targetmascot] step 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=discovered] run summon minecraft:marker ~ ~1 ~ {Tags:["caster2","summon","constellations","7-2"],Potion:CBC,Age:0,Duration:10000,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute if score @s cardcasting2 matches 18 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby





execute if score @s cardcasting2 matches 18 run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting2 matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[狄安娜之辉]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"你的回合内，每当你抽一张牌后，查看你的牌堆顶的两张牌，将其中一张置于你的牌堆顶，将另一张置于你的牌堆底。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting2 matches 16 run scoreboard players set @s cardcasting2 0
tag @e remove summon
tag @e remove targetmascot
tag @e remove targetcards
tag @s remove 123
