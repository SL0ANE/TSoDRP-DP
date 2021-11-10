

execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 if entity @s[tag=!attacked] run execute as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby if score @s minionboard = @e[tag=123,limit=1] minionboard run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1


execute if score @s casting matches 18 run playsound minecraft:item.trident.return block @a[tag=ingame] ~ ~ ~ 3 1 1
execute if score @s casting matches 18 facing entity @e[tag=target] feet positioned ^ ^ ^0.5 as @e[tag=target] run function ingame:effect/hammer_summon
execute if score @s casting matches 18 run tag @e[tag=summon3] add stun
execute if score @s casting matches 18 as @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"玛门","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，若本回合此随从未发动过攻击，则眩晕其对位随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 18 run scoreboard players set @s casting 5


tag @e remove summon3
tag @e remove target
tag @s remove 123
