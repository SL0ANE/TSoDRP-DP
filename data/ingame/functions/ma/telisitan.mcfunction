execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,tag=atker] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target1
execute if score @s casting matches 18 if score @e[tag=target1,limit=1] dmgdeal > @e[tag=minion,limit=1,tag=atktarget,scores={recover=-1}] hp run execute as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 unless entity @e[tag=target1] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=minion,tag=atker] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target1
execute if score @s casting matches 10 if score @e[tag=target1,limit=1] dmgdeal > @e[tag=minion,limit=1,tag=atktarget,scores={recover=-1}] hp run execute as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 unless entity @e[tag=target1] run scoreboard players set @s casting 1
execute if score @s casting matches 10 as @e[tag=target] run scoreboard objectives add tempodmg dummy
execute if score @s casting matches 10 as @e[tag=target] at @s positioned ~ ~4 ~ run function ingame:effect/sword2_summon
execute if score @s casting matches 10 as @e[tag=summon3] run scoreboard players operation @s tempodmg += @e[tag=target1,limit=1] dmgdeal
execute if score @s casting matches 10 as @e[tag=summon3] run scoreboard players operation @s tempodmg -= @e[tag=minion,limit=1,tag=atktarget,scores={recover=-1}] hp
execute if score @s casting matches 10 as @e[tag=summon3] if score @s tempodmg > @e[tag=target1,limit=1] attack run scoreboard players operation @s tempodmg = @e[tag=target1,limit=1] attack
execute if score @s casting matches 10 as @e[tag=summon3] run scoreboard players operation @s dmgtaken += @s tempodmg


execute if score @s casting matches 10 as @e[tag=target] at @s run playsound minecraft:entity.zombie.attack_iron_door block @a[tag=ingame] ~ ~ ~ 2 1.4 1
execute if score @s casting matches 10 as @e[tag=target] at @s run particle minecraft:dust 0 1 0 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"特里斯坦","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当己方随从攻击随从并造成伤害时，对敌方牌手造成等同于超出目标生命值的伤害值的伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 10 as @e[tag=target] run scoreboard objectives remove tempodmg
execute if score @s casting matches 10 if entity @e[tag=target] run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove target
tag @e remove target1
tag @s remove 123
