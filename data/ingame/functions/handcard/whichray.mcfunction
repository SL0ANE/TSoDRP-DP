
summon minecraft:marker ~ ~1 ~ {Tags:["ray","search","card","summon"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}


execute if entity @e[tag=selectedcard,tag=s_special] run tag @e[tag=ray] add s_special
execute if entity @e[tag=selectedcard,tag=s_special] run scoreboard players operation @e[tag=ray] number = @e[tag=selectedcard,tag=s_special] number
execute if entity @e[tag=selectedcard,tag=s_special] run scoreboard players operation @e[tag=ray] cardid = @e[tag=selectedcard,tag=s_special] cardid
execute if entity @e[tag=selectedcard,tag=s_enemy] run tag @e[tag=ray] add s_enemy
execute if entity @e[tag=selectedcard,tag=s_ally] run tag @e[tag=ray] add s_ally
execute if entity @e[tag=selectedcard,tag=s_minion] run tag @e[tag=ray] add s_minion
execute if entity @e[tag=selectedcard,tag=s_mascot] run tag @e[tag=ray] add s_mascot
execute if entity @e[tag=selectedcard,tag=s_live] run tag @e[tag=ray] add s_live
execute if entity @e[tag=selectedcard,tag=s_dead] run tag @e[tag=ray] add s_dead
execute if entity @e[tag=selectedcard,tag=s_hurt] run tag @e[tag=ray] add s_hurt
execute if entity @e[tag=selectedcard,tag=s_unhurt] run tag @e[tag=ray] add s_unhurt
execute if entity @e[tag=selectedcard,tag=ignoreimmune] run tag @e[tag=ray] add ignoreimmune

