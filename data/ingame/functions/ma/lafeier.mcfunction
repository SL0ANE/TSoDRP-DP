execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 run scoreboard players set @s round 3
execute if score @s casting matches 18 if score @s round matches ..0 run scoreboard players set @s casting 1
execute if score @s casting matches 18 run particle minecraft:dust 0.1 1 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1

execute if score @s casting matches 8 run tag @s add 123
execute if score @s casting matches 8 if score @s round matches 1.. unless entity @e[tag=targets] as @e[tag=!dying,tag=character,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s hp < @s hplimit run tag @s add targets
execute if score @s casting matches 8 if score @s round matches 1.. unless entity @e[tag=targets] as @e[tag=!dying,tag=character,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 8 if score @s round matches 1.. unless entity @e[tag=targets] as @e[tag=character,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s hp < @s hplimit run tag @s add targets
execute if score @s casting matches 8 if score @s round matches 1.. unless entity @e[tag=targets] as @e[tag=character,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 8 run tag @e[tag=targets,limit=1,sort=random] add pick
execute if score @s casting matches 8 as @e[tag=pick,tag=!123] run function ingame:effect/healer_summon
execute if score @s casting matches 8 as @e[tag=pick,tag=123] at @s positioned ~ ~1 ~ run function ingame:effect/healer_summon
execute if score @s casting matches 8 run scoreboard players set @e[tag=summon3] healtaken 2


execute if score @s casting matches 8 run tag @e[tag=pick] add hit
execute if score @s casting matches 8 run scoreboard players remove @s round 1
execute if score @s casting matches 8 if score @s round matches 1.. run scoreboard players set @s casting 10

execute if score @s casting matches 7 if entity @e[tag=hit] run tellraw @a[tag=ingame] [{"text":"?????????","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"?????????","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"???????????????????????????????????????????????????????????????2?????????????????????????????????"}},{"text":"???????????????","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"?????????","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 7 run scoreboard players reset @s round
execute if score @s casting matches 7 run tag @e remove hit

tag @e remove summon3
tag @e remove pick
tag @e remove targets
tag @s remove 123