execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,scores={attacking=3}] if score @s minionboard = @e[tag=123,limit=1] minionboard unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1

execute if score @s casting matches 15 run tag @s add 123
execute if score @s casting matches 15 as @e[tag=minion,scores={attacking=3}] if score @s minionboard = @e[tag=123,limit=1] minionboard unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 15 run summon minecraft:marker ~ ~0.5 ~ {Tags:["caster2","normalcaster2","modeleide","minioncaster","summon","a_halo","a_preendround2"]}
execute if score @s casting matches 15 run scoreboard players operation @e[tag=summon] minioncode = @e[tag=pass,limit=1] minioncode
execute if score @s casting matches 15 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s casting matches 15 as @e[tag=pass] run function ingame:effect/debuff_summon

execute if score @s casting matches 15 run particle minecraft:dust 1 0.7 1.3 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 15 run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 15 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"莫德雷德","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"永久拥有【回避】。每当对位随从攻击后，使其拥有【回避】，直到你的下个回合结束。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pass]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 15 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove summon
tag @e remove pass
tag @s remove 123
