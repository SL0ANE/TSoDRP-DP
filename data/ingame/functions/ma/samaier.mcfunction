execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 as @e[tag=character,scores={healing=5,recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting2 matches 18 as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pick
execute if score @s casting2 matches 18 as @e[tag=target] run scoreboard players operation @s losthp = @s hplimit
execute if score @s casting2 matches 18 as @e[tag=target] run scoreboard players operation @s losthp -= @s hp
execute if score @s casting2 matches 18 as @e[tag=target] if score @s healtaken > @s losthp run tag @s add pass
execute if score @s casting2 matches 18 unless entity @e[tag=hit] run tag @e[tag=pick,sort=random,limit=1,tag=!dying] add hit
execute if score @s casting2 matches 18 unless entity @e[tag=hit] run tag @e[tag=pick,sort=random,limit=1] add hit

execute if score @s casting2 matches 18 unless entity @e[tag=target] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 unless entity @e[tag=hit] run scoreboard players set @s casting2 1
execute if score @s casting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting2 1


execute if score @s casting2 matches 18 as @e[tag=hit] at @e[tag=target] run function ingame:effect/damage_summon
execute if score @s casting2 matches 18 as @e[tag=summon3] run scoreboard players operation @s dmgtaken += @e[tag=target] healtaken
execute if score @s casting2 matches 18 as @e[tag=summon3] run scoreboard players operation @s dmgtaken -= @e[tag=target] losthp




execute if score @s casting2 matches 18 if entity @e[tag=pass] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"萨麦尔","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当一个己方角色获得治疗时，将超出其生命上限的治疗量改为随机对一个敌方随从造成的伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s casting2 matches 18 run scoreboard players set @s casting2 5
tag @s remove 123
tag @e remove target
tag @e remove hit
tag @e remove pass
tag @e remove pick
tag @e remove summon3
