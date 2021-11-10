execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 as @e[tag=!dying,tag=minion,scores={recover=-1},tag=!123] run tag @s add target
execute if score @s casting2 matches 18 as @e[tag=target,limit=1,sort=random] run function ingame:ma/yase2
execute if score @s casting2 matches 18 unless entity @e[tag=highest] as @e[tag=!dying,tag=minion,scores={recover=-1},tag=!123] run tag @s add target
execute if score @s casting2 matches 18 unless entity @e[tag=highest] as @e[tag=target,limit=1,sort=random] run function ingame:ma/yase2

execute if score @s casting2 matches 18 unless entity @e[tag=highest] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 at @s as @e[tag=highest] run function ingame:effect/silencer_summon
execute if score @s casting2 matches 18 if entity @e[tag=highest] run particle minecraft:dust 1 0.3 0.3 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting2 matches 18 at @e[tag=highest] run particle minecraft:dust 1 1 0.3 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting2 matches 18 if entity @e[tag=highest] run playsound minecraft:entity.evoker.cast_spell block @a[tag=ingame] ~ ~ ~ 2 0.8 1
execute if score @s casting2 matches 18 if entity @e[tag=highest] run playsound minecraft:entity.evoker.cast_spell block @a[tag=ingame] ~ ~ ~ 2 0.8 1
execute if score @s casting2 matches 18 if entity @e[tag=highest] run playsound minecraft:item.book.page_turn block @a[tag=ingame] ~ ~ ~ 3 1 1
execute if score @s casting2 matches 18 if entity @e[tag=highest] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"亚瑟","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从受到伤害后，随机沉默一个攻击力最高的其他随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=highest]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting2 matches 18 if entity @e[tag=highest] run scoreboard players set @s casting2 5
tag @e remove summon3
tag @e remove higher
tag @e remove highest
tag @s remove 123