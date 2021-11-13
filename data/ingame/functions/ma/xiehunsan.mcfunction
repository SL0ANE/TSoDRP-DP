execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=atktarget,tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1

execute if score @s casting matches 15 run tag @s add 123
execute if score @s casting matches 15 as @e[tag=atktarget,tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 15 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1
execute if score @s casting matches 15 run scoreboard players add @s stackcount 1

execute if score @s casting matches 15 if score @s stackcount < @s stacklimit at @s run particle minecraft:dust 0.1 0.4 0.2 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 15 if score @s stackcount < @s stacklimit at @s run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 15 if score @s stackcount < @s stacklimit run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"邪魂叁","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从累计攻击敌方牌手一次后（每发动一次，便永久增加1层累计上限），使敌方牌手永久获得-1手牌上限。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 15 if score @s stackcount < @s stacklimit run scoreboard players set @s casting 5


execute if score @s casting matches 7 run tag @s add 123
execute if score @s casting matches 7 as @e[tag=atktarget,tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 7 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit run scoreboard players remove @e[tag=targetmascot,scores={handcardlimit=1..}] handcardlimit 1
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit at @s run particle minecraft:dust 0.4 0.4 0.4 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit at @s run playsound minecraft:entity.wither_skeleton.death block @a[tag=ingame] ~ ~ ~ 2 0.7 1
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit as @e[tag=targetmascot] at @s run function ingame:effect/scratch_summon
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"邪魂叁","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从累计攻击敌方牌手一次后（每发动一次，便永久增加1层累计上限），使敌方牌手永久获得-1手牌上限。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit run scoreboard players add @s[scores={stacklimit=..6}] stacklimit 1
execute if score @s casting matches 7 if score @s stackcount >= @s stacklimit run scoreboard players set @s stackcount 0




tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123







