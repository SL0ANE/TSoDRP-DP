execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=trapcaster,scores={trapcastorder=4}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add notpass
execute if score @s casting matches 18 unless entity @e[tag=notpass] as @e[tag=trap,tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add category1
execute if score @s casting matches 18 as @e[tag=category1,limit=1,sort=random] run function ingame:ma/shuangyuzuo2
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1
execute if score @s casting matches 18 as @e[tag=pass] run function ingame:removefromgame
execute if score @s casting matches 18 as @e[tag=pass] run tag @s add trapcaster
execute if score @s casting matches 18 as @e[tag=pass] run tag @s add caster2
execute if score @s casting matches 18 as @e[tag=pass] run function ingame:trapdisplay

execute if score @s casting matches 18 run playsound minecraft:block.grindstone.use block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 18 run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 18 run particle minecraft:dust 0.2 0.7 0.6 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"双鱼座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从唤醒或阵亡后，随机将你弃牌堆中的一张陷阱牌至于场上。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 18 run scoreboard players set @s casting 5


tag @e remove category1
tag @e remove pass
tag @e remove notpass
tag @s remove 123
