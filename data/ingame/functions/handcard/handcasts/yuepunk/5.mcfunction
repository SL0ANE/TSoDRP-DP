execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot

execute if score @s cardcasting matches 38 unless entity @e[tag=targets] unless score @e[tag=targetmascot,limit=1] roundusedcard matches 1.. as @e[tag=minion,scores={recover=-1,hp=1..}] run tag @s add targets
execute if score @s cardcasting matches 38 unless entity @e[tag=targets] unless score @e[tag=targetmascot,limit=1] roundusedcard matches 1.. as @e[tag=minion,scores={recover=-1}] run tag @s add targets
execute if score @s cardcasting matches 38 unless entity @e[tag=targets] if score @e[tag=targetmascot,limit=1] roundusedcard matches 1.. as @e[tag=minion,scores={recover=-1,hp=1..}] unless score @s ownedby = @e[tag=targetmascot,limit=1] ownedby run tag @s add targets
execute if score @s cardcasting matches 38 unless entity @e[tag=targets] if score @e[tag=targetmascot,limit=1] roundusedcard matches 1.. as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=targetmascot,limit=1] ownedby run tag @s add targets
execute if score @s cardcasting matches 38 run tag @e[tag=targets,sort=random,limit=1] add hittarget
execute if score @s cardcasting matches 38 as @e[tag=hittarget] at @e[tag=carduser] run function ingame:effect/cannon_summon
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage
execute if score @s cardcasting matches 38 at @e[tag=hittarget] run particle minecraft:dust 0.3 0.1 0.4 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:block.respawn_anchor.set_spawn block @s ~ ~ ~ 3 2 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[英歌行动]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"随机对一个随从造成9点伤害。若你于本回合已使用过牌，则改为随机对一个敌方随从造成9点伤害。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove summon3
tag @e remove hittarget
tag @e remove targets
tag @e remove targetmascot
tag @s remove 123