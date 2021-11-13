execute if score system gamecd matches ..1000 if score system pause matches 0 run scoreboard players add system gamecd 1
execute if score system gamecd matches 97 run function lobby:reportcreate



execute if score system gamecd matches 97 run title @a[tag=ingame] times 10 40 10
execute if score system gamecd matches 97 if score system arena matches 1 run title @a[tag=ingame] title [{"text":"龙阁断桥","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]





#————————————————————————————————————————————————————————————————————
execute if score system gamecd matches 97 if score system arena matches 1 run tp @a[tag=playing,scores={playernumber=1}] 67.5 25.5 6.5 180 0
execute if score system gamecd matches 97 if score system arena matches 1 run tp @a[tag=playing,scores={playernumber=2}] 67.5 25.5 -15.5 0 0
execute if score system gamecd matches 97 as @a[tag=playing,scores={playernumber=1..2}] at @s run particle minecraft:flash ~ ~ ~ ~ ~ ~ 0 10 normal @s
execute if score system gamecd matches 97 as @a[tag=playing,scores={playernumber=1..2}] at @s run playsound minecraft:entity.shulker.teleport block @s ~ ~ ~ 3 1 1
execute if score system gamecd matches 97 as @a[tag=playing,scores={playernumber=1..2}] at @s run playsound minecraft:entity.player.splash.high_speed block @s ~ ~ ~ 3 2 1

#————————————————————————————————————————————————————————————————————这个部分在下面也执行了一遍，必须执行两遍

execute if score system gamecd matches 100 run function lobby:display/mascotset

execute if score system gamecd matches 100 as @a run function gamedata:honor

execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] hplimit 30
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] hp 30
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] step 0
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] mana 0
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] manalimit 0
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] manaban 0
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] recover -1
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] handcardcount 0
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] handcardlimit 7
execute if score system gamecd matches 100 run scoreboard players set @e[tag=mascot] damage 0


execute if score system gamecd matches 100 if score system arena matches 1 run summon minecraft:armor_stand 67 31 -5 {CustomName:"[{\"text\":\"回合结束\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["button2","endround"],Invisible:1,DisabledSlots:1039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{}]}
execute if score system gamecd matches 100 if score system arena matches 1 run summon minecraft:armor_stand 63.5 28.2 -4.5 {Tags:["button2","deck","ownedby1"],CustomName:"[{\"text\":\"↓牌堆↓\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Invisible:1,DisabledSlots:1039583,Rotation:[-40f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:101}}]}
execute if score system gamecd matches 100 if score system arena matches 1 run summon minecraft:armor_stand 71.5 28.2 -4.5 {Tags:["button2","deck","ownedby2"],CustomName:"[{\"text\":\"↓牌堆↓\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Invisible:1,DisabledSlots:1039583,Rotation:[140f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:101}}]}
execute if score system gamecd matches 100 if score system arena matches 1 run summon minecraft:armor_stand 62.5 28.2 -1.5 {Tags:["button2","dcpile","ownedby1"],CustomName:"[{\"text\":\"↓弃牌堆↓\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Invisible:1,DisabledSlots:1039583,Rotation:[-90f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:102}}]}
execute if score system gamecd matches 100 if score system arena matches 1 run summon minecraft:armor_stand 72.5 28.2 -7.5 {Tags:["button2","dcpile","ownedby2"],CustomName:"[{\"text\":\"↓弃牌堆↓\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Invisible:1,DisabledSlots:1039583,Rotation:[90f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:102}}]}

execute if score system gamecd matches 100 run scoreboard players set @e[tag=deck,tag=ownedby1] ownedby 1
execute if score system gamecd matches 100 run scoreboard players set @e[tag=deck,tag=ownedby2] ownedby 2
execute if score system gamecd matches 100 run scoreboard players set @e[tag=dcpile,tag=ownedby1] ownedby 1
execute if score system gamecd matches 100 run scoreboard players set @e[tag=dcpile,tag=ownedby2] ownedby 2

execute if score system gamecd matches 101 as @a[tag=playing,scores={playernumber=1}] at @s run function lobby:readydeck
execute if score system gamecd matches 101 as @e[tag=deck,tag=ownedby1] at @s run function ingame:shuffle
execute if score system gamecd matches 101 as @e[tag=deck,tag=ownedby1] at @s run function ingame:setdeck
execute if score system gamecd matches 102 as @a[tag=playing,scores={playernumber=2}] at @s run function lobby:readydeck
execute if score system gamecd matches 102 as @e[tag=deck,tag=ownedby2] at @s run function ingame:shuffle
execute if score system gamecd matches 102 as @e[tag=deck,tag=ownedby2] at @s run function ingame:setdeck




#————————————————————————————————————————————————————————————————————
execute if score system gamecd matches 100 if score system arena matches 1 run tp @a[tag=playing,scores={playernumber=1}] 67.5 25.5 6.5 180 0
execute if score system gamecd matches 100 if score system arena matches 1 run tp @a[tag=playing,scores={playernumber=2}] 67.5 25.5 -15.5 0 0
#————————————————————————————————————————————————————————————————————这个部分在上面也执行了一遍，必须执行两遍
execute if score system gamecd matches 103 as @a[tag=playing,scores={playernumber=1..2}] run function lobby:display/minionset
execute if score system gamecd matches 103 if score system arena matches 1 run summon minecraft:marker 67.5 27 -4.5 {CustomName:"[{\"text\":\"\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["centre","gamemob"],Rotation:[90f]}

execute if score system gamecd matches 140 run title @a[tag=ingame] reset
execute if score system gamecd matches 140 run title @a[tag=ingame] clear
execute if score system gamecd matches 140 run title @a[tag=ingame] times 10 40 10
execute if score system gamecd matches 140 run title @a[tag=playing,scores={playernumber=1}] title [{"text":"后手","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score system gamecd matches 140 run title @a[tag=playing,scores={playernumber=2}] title [{"text":"先手","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]





execute if score system gamecd matches 123 as @e[tag=mascot,tag=ownedby1] run function ingame:pregamedraw
execute if score system gamecd matches 123 as @e[tag=mascot,tag=ownedby1] run function ingame:pregamedraw
execute if score system gamecd matches 123 as @e[tag=mascot,tag=ownedby1] run function ingame:pregamedraw
execute if score system gamecd matches 123 as @e[tag=mascot,tag=ownedby2] run function ingame:pregamedraw
execute if score system gamecd matches 123 as @e[tag=mascot,tag=ownedby2] run function ingame:pregamedraw
execute if score system gamecd matches 123 as @e[tag=mascot,tag=ownedby2] run function ingame:pregamedraw
execute if score system gamecd matches 123 as @e[tag=mascot] run playsound minecraft:ui.loom.select_pattern block @a[tag=ingame] ~ ~ ~ 3 1.6 1
execute if score system gamecd matches 123 as @e[tag=mascot] run function ingame:handcard/setback

execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"免费更换起始手牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余5次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score system gamecd matches 180 as @a[tag=playing,scores={playernumber=1..2}] run item replace entity @a[tag=playing,scores={playernumber=1..2}] hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"信息查询\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"准星瞄准随从、牌手或牌堆\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键与之互动\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"查看其信息\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["control","othercontrol"],CustomModelData:1} 1
execute if score system gamecd matches 180 run title @a[tag=ingame] reset
execute if score system gamecd matches 180 run title @a[tag=ingame] clear
execute if score system gamecd matches 180 run title @a[tag=ingame] times 0 3 0
execute if score system gamecd matches 181..190 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"red","bold":"true"}
execute if score system gamecd matches 191..200 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"gold","bold":"true"}
execute if score system gamecd matches 201..210 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"red","bold":"true"}
execute if score system gamecd matches 211..220 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"gold","bold":"true"}
execute if score system gamecd matches 221..230 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"red","bold":"true"}
execute if score system gamecd matches 231..240 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"gold","bold":"true"}
execute if score system gamecd matches 241..250 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"red","bold":"true"}
execute if score system gamecd matches 251..260 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"gold","bold":"true"}
execute if score system gamecd matches 261..270 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"red","bold":"true"}
execute if score system gamecd matches 271..280 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"gold","bold":"true"}
execute if score system gamecd matches 281..290 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"red","bold":"true"}
execute if score system gamecd matches 291..300 as @a[tag=ingame] run title @s title {"text":"预备阶段","color":"gold","bold":"true"}
execute if score system gamecd matches 181..190 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（6）","color":"red","bold":"true"}
execute if score system gamecd matches 191..200 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（6）","color":"gold","bold":"true"}
execute if score system gamecd matches 201..210 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（5）","color":"red","bold":"true"}
execute if score system gamecd matches 211..220 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（5）","color":"gold","bold":"true"}
execute if score system gamecd matches 221..230 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（4）","color":"red","bold":"true"}
execute if score system gamecd matches 231..240 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（4）","color":"gold","bold":"true"}
execute if score system gamecd matches 241..250 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（3）","color":"red","bold":"true"}
execute if score system gamecd matches 251..260 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（3）","color":"gold","bold":"true"}
execute if score system gamecd matches 261..270 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（2）","color":"red","bold":"true"}
execute if score system gamecd matches 271..280 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（2）","color":"gold","bold":"true"}
execute if score system gamecd matches 281..290 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（1）","color":"red","bold":"true"}
execute if score system gamecd matches 291..300 as @a[tag=playing] run title @s subtitle {"text":"右键更换起始手牌（1）","color":"gold","bold":"true"}
execute if score system gamecd matches 301..320 as @a[tag=ingame] run title @s title {"text":"对局开始","color":"green","bold":"true"}
execute if score system gamecd matches 301..320 as @a[tag=ingame] run title @s subtitle {"text":"","color":"green","bold":"true"}

execute if score system gamecd matches 180..320 as @a[tag=playing,scores={playernumber=1..2}] if score @s waiting matches 1.. run scoreboard players remove @s waiting 1
execute if score system gamecd matches 180..320 as @a[tag=playing,scores={playernumber=1..2}] if score @s waiting matches ..0 run scoreboard players reset @s waiting
execute if score system gamecd matches 180..320 as @a run function ingame:hoverhotbar
execute if score system gamecd matches 180..320 as @a unless score @s hoverhotbar matches 1..7 at @s run function ingame:handcard/setback
execute if score system gamecd matches 180..320 as @a[tag=playing,scores={hoverhotbar=0..8,playernumber=1..2}] at @s run function ingame:handcard/select
execute if score system gamecd matches 180..320 as @a[tag=playing,scores={rightclick=1..,playernumber=1..2},nbt={SelectedItem:{tag:{Tags:["redraw"]}}}] unless score @s waiting matches 1.. at @s run function ingame:redraw



execute if score system gamecd matches 350 as @e[tag=character] run scoreboard players set @s dying 0
execute if score system gamecd matches 350 run tag @e[tag=mascot,scores={ownedby=2}] add onturn
execute if score system gamecd matches 350 run execute as @e[tag=onturn,tag=mascot] at @s run scoreboard players set @s roundstarting 24
execute if score system gamecd matches 350 run clear @a[tag=playing,scores={playernumber=1..2}]

execute if score system gamecd matches 350 run item replace entity @a[tag=playing,scores={playernumber=1..2}] container.9 with minecraft:white_banner{display:{Name:"[{\"text\":\"我输了\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"在没有事件执行时投降\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},BlockEntityTag:{Base:15},CustomModelData:1} 1



execute if score system gamecd matches 351 run scoreboard players set system pause 2
