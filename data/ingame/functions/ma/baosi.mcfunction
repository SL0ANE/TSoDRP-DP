execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 as @s[scores={at_dmgtaken=1..}] run tag @s add pass
execute if score @s casting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 unless score @s hp matches 1.. run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 run scoreboard players add @s healtaken 7
execute if score @s casting2 matches 18 run scoreboard players remove @s hplimit 1
execute if score @s casting2 matches 18 run particle minecraft:dust 0.1 1 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting2 matches 18 run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s casting2 matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"鲍斯","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"永久拥有【玄惑】。每当鲍斯受到攻击伤害后，若其生命值至少为1，则使其获得-1生命上限，然后为其恢复7点生命。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting2 matches 18 run scoreboard players set @s casting2 5
tag @e remove pass
tag @s remove 123







