execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=target] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 unless entity @e[tag=target] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1


execute if score @s casting matches 10 if entity @e[tag=target] run tag @e[tag=!mute,tag=target,limit=1,sort=random] add mutetarget
execute if score @s casting matches 10 unless entity @e[tag=mutetarget] run tag @e[tag=target,limit=1,sort=random] add mutetarget


execute if score @s casting matches 10 as @e[tag=mutetarget] at @s run particle minecraft:dust 1 0 2 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 if entity @e[tag=mutetarget] run playsound minecraft:entity.elder_guardian.curse block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 if entity @e[tag=mutetarget] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"别西卜","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，随机沉默一个敌方随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mutetarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @e remove target
execute if score @s casting matches 10 as @e[tag=mutetarget] at @s positioned ~ ~4 ~ run function ingame:effect/silencer_summon

tag @e remove mutetarget
tag @s remove 123
