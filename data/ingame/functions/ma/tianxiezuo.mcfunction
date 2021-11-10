execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=targets] if entity @s[tag=pickedtarget] if entity @e[tag=beingused,tag=s_live] as @e[tag=minion,tag=!123,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 18 unless entity @e[tag=targets] if entity @s[tag=pickedtarget] if entity @e[tag=beingused,tag=s_live] as @e[tag=minion,tag=!123,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 18 unless entity @e[tag=targets] run scoreboard players set @s casting 1




execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 unless entity @e[tag=targets] if entity @s[tag=pickedtarget] if entity @e[tag=beingused,tag=s_live] as @e[tag=minion,tag=!123,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 10 unless entity @e[tag=targets] if entity @s[tag=pickedtarget] if entity @e[tag=beingused,tag=s_live] as @e[tag=minion,tag=!123,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 10 unless entity @e[tag=targets] run scoreboard players set @s casting 1
execute if score @s casting matches 10 run tag @s remove cardtarget
execute if score @s casting matches 10 as @e[tag=targets,limit=1,sort=random] run tag @s add targetminion
execute if score @s casting matches 10 as @e[tag=targetminion] run tag @s add cardtarget
execute if score @s casting matches 10 as @e[tag=cardcaster] run scoreboard players set @s cardcasting 40

execute if score @s casting matches 10 run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 10 run particle minecraft:dust 0 0.9 0.6 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 at @e[tag=targetminion] run particle minecraft:dust 0.8 0.8 0.2 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"天蝎座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你对此随从使用一张法术牌后，随机对另一个己方随从再次释放。每回合限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetminion]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 run tag @s add casted2
execute if score @s casting matches 10 run scoreboard players set @s casting 5


tag @e remove targets
tag @e remove targetminion
tag @e remove pass
tag @s remove 123
