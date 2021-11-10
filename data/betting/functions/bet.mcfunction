tag @s add click

execute as @e[tag=reportholder] if score @s playerid = @a[tag=click,limit=1] playerid run tag @s add targetholder
scoreboard objectives add repeatcount dummy
playsound minecraft:ui.button.click block @s ~ ~ ~ 3 1.2 1
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["search","ray","bet"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function ingame:ray

execute if entity @e[tag=hit,scores={ownedby=1}] if entity @e[tag=targetholder,scores={bet=..-1}] run tag @s add betted
execute if entity @e[tag=hit,scores={ownedby=2}] if entity @e[tag=targetholder,scores={bet=1..}] run tag @s add betted
#检测已为另一名牌手下注
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] unless score @s money matches 1.. run tag @s add poor
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] unless score @s money matches 10.. run tag @s add poor
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] unless score @s money matches 50.. run tag @s add poor
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] unless score @s money matches 100.. run tag @s add poor
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] unless score @s money matches 500.. run tag @s add poor
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] unless score @s money matches 1000.. run tag @s add poor
execute if entity @e[tag=hit] as @a[tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] unless score @s money matches 5000.. run tag @s add poor
#检测金币是否足够
execute if score betclock gamecd matches 0 run tag @s add late
#检测是否已收盘
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=!betted,tag=!poor,tag=!late,tag=click,nbt={SelectedItem:{tag:{Tags:["bet"]}}}] run tag @s add pass
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=!betted,tag=!poor,tag=!late,tag=click,nbt={SelectedItem:{tag:{Tags:["bet"]}}}] run tag @s add pass
#一切正常
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] run scoreboard players add player1 bet 10
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] run scoreboard players add player2 bet 10
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] run scoreboard players add player1 bet 50
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] run scoreboard players add player2 bet 50
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] run scoreboard players add player1 bet 100
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] run scoreboard players add player2 bet 100
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] run scoreboard players add player1 bet 500
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] run scoreboard players add player2 bet 500
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] run scoreboard players add player1 bet 1000
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] run scoreboard players add player2 bet 1000
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] run scoreboard players add player1 bet 5000
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] run scoreboard players add player2 bet 5000
execute as @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] run scoreboard players operation player1 bet += @a[tag=click] money
execute as @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @a[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] run scoreboard players operation player2 bet += @a[tag=click] money
#让目标提升金额
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] run scoreboard players add @e[tag=targetholder] bet 10
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] run scoreboard players remove @e[tag=targetholder] bet 10
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] run scoreboard players add @e[tag=targetholder] bet 50
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] run scoreboard players remove @e[tag=targetholder] bet 50
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] run scoreboard players add @e[tag=targetholder] bet 100
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] run scoreboard players remove @e[tag=targetholder] bet 100
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] run scoreboard players add @e[tag=targetholder] bet 500
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] run scoreboard players remove @e[tag=targetholder] bet 500
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] run scoreboard players add @e[tag=targetholder] bet 1000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] run scoreboard players remove @e[tag=targetholder] bet 1000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] run scoreboard players add @e[tag=targetholder] bet 5000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] run scoreboard players remove @e[tag=targetholder] bet 5000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] run scoreboard players operation @e[tag=targetholder] bet += @s money
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] run scoreboard players operation @e[tag=targetholder] bet -= @s money
#给数据记录器相应的bet分数，正值表示给一号玩家下注，负值表示给二号玩家下注

execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] run scoreboard players remove @s money 10
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] run scoreboard players remove @s money 10
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] run scoreboard players remove @s money 50
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] run scoreboard players remove @s money 50
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] run scoreboard players remove @s money 100
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] run scoreboard players remove @s money 100
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] run scoreboard players remove @s money 500
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] run scoreboard players remove @s money 500
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] run scoreboard players remove @s money 1000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] run scoreboard players remove @s money 1000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] run scoreboard players remove @s money 5000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] run scoreboard players remove @s money 5000
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=1}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] run scoreboard players set @s money 0
execute if entity @e[tag=hit,tag=mascot,scores={ownedby=2}] if entity @s[tag=pass,tag=click,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] run scoreboard players set @s money 0
#扣钱

playsound minecraft:block.chain.place block @s[tag=pass] ~ ~ ~ 3 0.7 1
title @s clear
title @s times 0 1 10
title @s[tag=pass] title [{"text":"▶","color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"下注成功","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"◀","#98FB98":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","10gold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了10金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","50gold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了50金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","100gold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了100金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","500gold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了500金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","1000gold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了1000金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","5000gold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了5000金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=pass,nbt={SelectedItem:{tag:{Tags:["bet","allgold"]}}}] subtitle [{"text":"你在","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"押了全部金币","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

title @s[tag=poor] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法下注","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=betted] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法下注","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=late] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法下注","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

title @s[tag=poor] subtitle [{"text":"余额不足","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=betted] subtitle [{"text":"已为另一名牌手下注","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @s[tag=late] subtitle [{"text":"已经收盘","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]





tag @e remove 345
tag @e remove 234
tag @e remove hit
kill @e[tag=ray]
tag @s remove click
tag @e remove targetholder
tag @s remove poor
tag @s remove pass
tag @s remove notpass
tag @s remove betted
tag @s remove late