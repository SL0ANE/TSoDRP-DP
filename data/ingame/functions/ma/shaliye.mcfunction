execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 run particle minecraft:dust 0 1 0 1.6 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s casting matches 18 run scoreboard players operation @e[tag=target] healtaken += @s dmgdealt
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"沙利叶","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击并造成伤害后，为你恢复等量生命。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @e remove target
tag @s remove 123