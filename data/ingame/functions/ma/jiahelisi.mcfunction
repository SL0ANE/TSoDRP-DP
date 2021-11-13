execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 as @e[tag=jiahelisi,tag=minioncaster] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add pass


execute if score @s casting2 matches 18 if entity @e[tag=pass] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 run summon minecraft:marker ~ ~0.5 ~ {Tags:["caster2","normalcaster2","jiahelisi","minioncaster","summon","a_halo","a_prestartround2"]}
execute if score @s casting2 matches 18 run scoreboard players operation @e[tag=summon] minioncode = @s minioncode
execute if score @s casting2 matches 18 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby


execute if score @s casting2 matches 18 at @s run particle minecraft:dust 1 0.7 1.3 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting2 matches 18 run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting2 matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"加荷里斯","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你弃置一张牌后，使此随从拥有【玄惑】和【狡诈】，直到你的下个回合。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting2 matches 18 run scoreboard players set @s casting2 5
tag @e remove summon
tag @e remove pass
tag @s remove 123
