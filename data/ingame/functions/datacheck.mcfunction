tag @s add click





scoreboard objectives add repeatcount dummy
playsound minecraft:ui.button.click block @s ~ ~ ~ 3 1.2 1
summon minecraft:marker ~ ~1 ~ {Tags:["search","ray","datacheck"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function ingame:ray

execute as @e[tag=hit,tag=minion] unless score @s recover matches -2 run function ingame:minion/datacheck2
execute as @e[tag=hit,tag=minion] if score @s recover matches -2 if score @s ownedby = @a[tag=click,limit=1] playernumber run function ingame:minion/datacheck2
execute as @e[tag=hit,tag=minion] if score @s recover matches -2 unless score @s ownedby = @a[tag=click,limit=1] playernumber run function ingame:minion/datacantcheck
execute as @e[tag=hit,tag=mascot] run function ingame:mascotdata
execute as @e[tag=hit,tag=dcpile] run function ingame:dcpilecheck
execute as @e[tag=hit,tag=deck] run function ingame:deckcheck
execute as @e[tag=hit,tag=card] unless score @s handorder matches 1.. unless score @s cardorder matches 1.. if score @s ownedby = @e[tag=click,limit=1] playernumber run function ingame:handcard/datacheck


execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] unless score @s ownedby = @a[tag=click,limit=1] playernumber run title @a[tag=click] clear
execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] unless score @s ownedby = @a[tag=click,limit=1] playernumber run title @a[tag=click] times 0 1 10
execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] unless score @s ownedby = @a[tag=click,limit=1] playernumber run title @a[tag=click] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法进行该操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] if score @s ownedby = @a[tag=click,limit=1] playernumber if score eventplaying pause matches 1.. run title @a[tag=click] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"事件正在进行中","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] if score @s ownedby = @a[tag=click,limit=1] playernumber if score eventplaying pause matches 0 run playsound minecraft:ui.button.click block @a[tag=click] ~ ~ ~ 3 0.4 1
execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] if score @s ownedby = @a[tag=click,limit=1] playernumber if score eventplaying pause matches 0 run data merge entity @e[tag=endround,limit=1] {CustomName:"[{\"text\":\"回合结束\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute if entity @e[tag=hit,tag=endround] run execute as @e[tag=mascot,tag=onturn] if score @s ownedby = @a[tag=click,limit=1] playernumber if score eventplaying pause matches 0 run scoreboard players set @s roundending 24

tag @e remove 345
tag @e remove 234
tag @e[tag=hit] remove deny
tag @e[tag=hit] remove hit
kill @e[tag=ray]
tag @s remove click


