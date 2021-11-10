forceload add -240 13 -154 94
forceload add 51 18 83 -28
forceload add 1 7 -9 -11


execute as @a run stopsound @s
execute as @e[type=!player,tag=!reportholder,tag=!chosen] run kill @s
title @a clear

summon minecraft:item_frame -211 19 25 {Tags:["lobby"],Facing:5b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:1}}}
#summon minecraft:item_frame -189 19 35 {Tags:["lobby"],Facing:3b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:3}}}
#summon minecraft:item_frame -217 19 35 {Tags:["lobby"],Facing:3b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:3}}}
summon minecraft:item_frame -189 19 35 {Tags:["lobby"],Facing:3b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:6}}}
summon minecraft:item_frame -217 19 35 {Tags:["lobby"],Facing:3b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:6}}}


summon minecraft:item_frame -203 29 23 {Tags:["lobby"],Facing:3b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:4}}}
summon minecraft:item_frame -219 20 73 {Tags:["lobby","gamemob","lottery_poster"],Facing:2b,Invulnerable:1b,Item:{id:"minecraft:green_dye",Count:1,tag:{CustomModelData:5}}}

#summon minecraft:armor_stand -208.5 28 31.0 {CustomName:"[{\"text\":\"\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["gamemob","packswitch2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
#summon minecraft:armor_stand -208.5 28.4 31.0 {CustomName:"[{\"text\":\"切换卡包\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["packswitch","button"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
#function lobby:packselected

summon minecraft:armor_stand -196.5 27.4 31.0 {CustomName:"[{\"text\":\"回合时间\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["roundtime","button","gamemob"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
execute as @e[tag=roundtime] run function lobby:roundtime2
summon minecraft:armor_stand -219.4 18.3 73.5 {CustomName:"[{\"text\":\"抽1次皮肤\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lottery1","button","gamemob"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b}
summon minecraft:armor_stand -220.8 18.3 73.5 {CustomName:"[{\"text\":\"抽10次皮肤\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lottery10","button","gamemob"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b}


summon minecraft:armor_stand -202.5 25 20.5 {CustomName:"[{\"text\":\"游戏开始\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["starter","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}

#summon minecraft:area_effect_cloud -228.0 17.2 49.0 {CustomName:"[{\"text\":\"抽奖\",\"color\":\"#54FF9F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lottery","word"],CustomNameVisible:1b,Duration:10000}


summon minecraft:armor_stand -156 23.7 104 {CustomName:"[{\"text\":\"右键猜烈焰人赢\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["fightbet","blaze","button"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -156 23.7 115 {CustomName:"[{\"text\":\"右键猜雪傀儡赢\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["fightbet","snow_golem","button"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -210.1 18.3 25 {CustomName:"[{\"text\":\"右键玩老虎机\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["slotmachine","button"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}


summon minecraft:armor_stand -202.5 23 57.7 {CustomName:"[{\"text\":\"排行榜\",\"color\":\"#FAFAD2\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["rank","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 22.4 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFF00\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["1strankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 22.1 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#C0C0C0\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["2ndrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 21.8 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#D2691E\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["3rdrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 21.5 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["4thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 21.2 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["5thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 20.9 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["6thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 20.6 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["7thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 20.3 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["8thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 20.0 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["9thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
summon minecraft:armor_stand -202.5 19.7 57.7 {CustomName:"[{\"text\":\"虚位以待\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["10thrankholder","rankholder","word"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}



setblock -203 36 38 air


summon item -226 18.5 71 {CustomName:"[{\"text\":\"武士\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:1}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -226 18.5 69 {CustomName:"[{\"text\":\"南瓜杰克\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:2}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -226 18.5 67 {CustomName:"[{\"text\":\"萨满\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:3}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -226 18.5 65 {CustomName:"[{\"text\":\"初音未来\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:4}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -226 18.5 63 {CustomName:"[{\"text\":\"胡桃匣子\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:5}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -224 18 61 {CustomName:"[{\"text\":\"彩虹喵\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:6}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -222 18 61 {CustomName:"[{\"text\":\"城之内克也\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:7}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -220 18 61 {CustomName:"[{\"text\":\"海马濑人\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:8}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -218 18 61 {CustomName:"[{\"text\":\"武藤游戏\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:9}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -216 18 61 {CustomName:"[{\"text\":\"Nono\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:10}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}
summon item -214 18 61 {CustomName:"[{\"text\":\"超能Nono\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Item:{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:11}},Tags:["gamemob","mascot2","display","lobby"],CustomNameVisible:0b,PickupDelay:32767s,Age:-32768}








xp add @a -9999 levels

clear @a
#give @a minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无义的纳米刀\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键冲刺\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"击飞附近玩家\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["dash","2stage"],CustomModelData:16} 1
#execute as @a run function lobby:give_go_first
execute as @a run function lobby:usedeck_reset
tag @a remove go_first
tag @a remove at_dmgto
tag @a remove at_dmgfrom
tag @a remove playing
tag @a remove spectating
tag @a remove ingame
data modify storage minecraft:buff List set value []

data modify storage minecraft:minion1buff List set value []
data modify storage minecraft:minion2buff List set value []
data modify storage minecraft:minion3buff List set value []
data modify storage minecraft:minion4buff List set value []
data modify storage minecraft:minion5buff List set value []
data modify storage minecraft:minion6buff List set value []
data modify storage minecraft:minion1buff List2 set value []
data modify storage minecraft:minion2buff List2 set value []
data modify storage minecraft:minion3buff List2 set value []
data modify storage minecraft:minion4buff List2 set value []
data modify storage minecraft:minion5buff List2 set value []
data modify storage minecraft:minion6buff List2 set value []


bossbar remove minecraft:fightbet
bossbar remove minecraft:roundtime

#scoreboard objectives add rotation dummy
#scoreboard objectives add z dummy
#scoreboard objectives add x dummy
scoreboard objectives add combo dummy
scoreboard objectives add combodisplay dummy {"text":"连打得分","color":"aqua","bold":"true"}
scoreboard objectives add combotime dummy
scoreboard objectives add dash dummy
scoreboard objectives add leavegame minecraft.custom:minecraft.leave_game
#彩蛋

scoreboard objectives add hutao dummy
scoreboard objectives add nono dummy
scoreboard objectives add nyan dummy
scoreboard objectives add shaman dummy
scoreboard objectives add supernono dummy
scoreboard objectives add miku dummy
scoreboard objectives add joey dummy
scoreboard objectives add kaiba dummy
scoreboard objectives add yugi dummy


scoreboard objectives add throwmoney minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add mascot dummy
#scoreboard objectives add y_axis dummy
scoreboard objectives add gameid dummy
scoreboard objectives add shopping dummy
scoreboard objectives add go_first dummy
scoreboard objectives add bet dummy
scoreboard objectives add storedbet dummy
scoreboard objectives add money dummy
scoreboard objectives add changetime dummy
scoreboard objectives add cardcast2order dummy
scoreboard objectives add trapcastorder dummy
scoreboard objectives add streak dummy
scoreboard objectives add playerid dummy
scoreboard objectives add honor dummy
scoreboard objectives add scores dummy
scoreboard objectives add winrate dummy
scoreboard objectives add dcpilecount dummy
scoreboard objectives add usecardorder dummy
scoreboard objectives add handcardposition dummy
scoreboard objectives add aggressivetime dummy
scoreboard objectives add dmgimmunetime dummy
scoreboard objectives add immunetime dummy
scoreboard objectives add blocktime dummy
scoreboard objectives add prudenttime dummy
scoreboard objectives add keentime dummy
scoreboard objectives add striketime dummy
scoreboard objectives add dodgetime dummy
scoreboard objectives add cunningtime dummy
scoreboard objectives add puzzletime dummy
scoreboard objectives add toughtime dummy
scoreboard objectives add chaintime dummy
scoreboard objectives add sweeptime dummy
scoreboard objectives add cardcasting2 dummy
scoreboard objectives add cardcasting3 dummy
scoreboard objectives add trapcasting dummy
scoreboard objectives add environmentlife dummy
scoreboard objectives add cardcasttime dummy
scoreboard objectives add cardcasting dummy
scoreboard objectives add reducedrecover dummy
scoreboard objectives add gameplayed dummy
scoreboard objectives add totalgameplayed dummy
scoreboard objectives add win dummy
scoreboard objectives add totalwin dummy
scoreboard objectives add lose dummy
scoreboard objectives add totallose dummy
scoreboard objectives add gamedraw dummy
scoreboard objectives add totalgamedraw dummy
scoreboard objectives add drawaddition dummy
scoreboard objectives add waiting dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add arena dummy
scoreboard objectives add stackcount dummy
scoreboard objectives add stacklimit dummy
scoreboard objectives add overallmanalimit dummy
scoreboard objectives add mode dummy
scoreboard objectives add attacked dummy
scoreboard objectives add manaban dummy
scoreboard objectives add manalimit dummy
scoreboard objectives add usingcard dummy
scoreboard objectives add recovering dummy
scoreboard objectives add entering dummy
scoreboard objectives add rcvremoving dummy
scoreboard objectives add stunremoving dummy
scoreboard objectives add roundending dummy
scoreboard objectives add roundcount dummy
scoreboard objectives add pack dummy
scoreboard objectives add deck dummy
scoreboard objectives add cardid dummy
scoreboard objectives add minionid dummy
scoreboard objectives add healtaken dummy
scoreboard objectives add at_dmgtaken dummy
scoreboard objectives add dmgtaken dummy
scoreboard objectives add dmgdealt dummy
scoreboard objectives add dmgdeal dummy
scoreboard objectives add drawing dummy
scoreboard objectives add folding dummy
scoreboard objectives add dying dummy
scoreboard objectives add switching dummy
scoreboard objectives add healing dummy
scoreboard objectives add dmgtaking dummy
scoreboard objectives add dmgdealing dummy
scoreboard objectives add attacking dummy
scoreboard objectives add mana dummy
scoreboard objectives add stun dummy
scoreboard objectives add page dummy
scoreboard objectives add step dummy
scoreboard objectives add hoverhotbar dummy
scoreboard objectives add drawtime dummy
scoreboard objectives add ownedby dummy
scoreboard objectives add deckcount dummy
scoreboard objectives add rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rightclick2 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add basic_cost dummy
scoreboard objectives add basic_attack dummy
scoreboard objectives add basic_hp dummy
scoreboard objectives add attack dummy
scoreboard objectives add trueattack dummy
scoreboard objectives add haloattack dummy
scoreboard objectives add basic_recover dummy
scoreboard objectives add hp dummy
scoreboard objectives add hplimit dummy
scoreboard objectives add losthp dummy
scoreboard objectives add level dummy
scoreboard objectives add roundfoldcard dummy
scoreboard objectives add roundusedcard dummy
scoreboard objectives add roundusedspell dummy
scoreboard objectives add roundusedenv dummy
scoreboard objectives add rounduse dummy
scoreboard objectives add totalusedcard dummy
scoreboard objectives add totalusednorm dummy
scoreboard objectives add totalusedenv dummy
scoreboard objectives add recover dummy
scoreboard objectives add damage dummy
scoreboard objectives add truedamage dummy
scoreboard objectives add halodamage dummy
scoreboard objectives add cost dummy
scoreboard objectives add hpcost dummy
scoreboard objectives add halocost dummy
scoreboard objectives add halohpcost dummy
scoreboard objectives add truecost dummy
scoreboard objectives add truehpcost dummy
scoreboard objectives add shield dummy
scoreboard objectives add casting dummy
scoreboard objectives add casting2 dummy
scoreboard objectives add supercasting dummy
scoreboard objectives add position dummy
scoreboard objectives add round dummy
scoreboard objectives add system dummy
scoreboard objectives add handcardlimit dummy
scoreboard objectives add handcardcount dummy
scoreboard objectives add playernumber dummy
scoreboard objectives add minioncount dummy
scoreboard objectives add minionboard dummy
scoreboard objectives add minioncode dummy
scoreboard objectives add targetcode dummy
scoreboard objectives add cardboard dummy
scoreboard objectives add pause dummy
scoreboard objectives add gamecd dummy
scoreboard objectives add hasbuff dummy
scoreboard objectives add cardorder dummy
scoreboard objectives add dcpileorder dummy
scoreboard objectives add handorder dummy
scoreboard objectives add bancount dummy


scoreboard objectives add number dummy
scoreboard players reset fightbet system
scoreboard players reset slotmachine system
scoreboard players reset player1 bet
scoreboard players reset player2 bet
scoreboard players set -1 number -1
scoreboard players set 2 number 2
scoreboard players set 10 number 10
scoreboard players set 20 number 20
scoreboard players set 60 number 60
scoreboard players set 100 number 100
scoreboard players set 110 number 110
scoreboard players set 10000 number 10000
scoreboard players set roundminiondied number 0
scoreboard players set system pause 1
scoreboard players reset system bet
scoreboard players reset reload system
scoreboard players set system overallmanalimit 7
scoreboard players set system system 0
scoreboard players set system gamecd 0
scoreboard players reset reload system
scoreboard players set system step 0
scoreboard players set system bancount 0
scoreboard players set @a minioncount 0
scoreboard players reset system cardcast2order
scoreboard players reset system trapcastorder
scoreboard players reset @e bet
scoreboard players reset @a changetime
scoreboard players set honorloop gamecd 0
scoreboard players set betclock gamecd 1200
scoreboard players set t_hold system 599
scoreboard players set roundtime2 system 0
function lobby:quit_tutorial


team leave @a
team add Untitled
team add Rookie
team add Apprentice
team add Elite
team add Expert
team add Master
team add Supreme
team add Legend
team add God
team modify Untitled prefix {"text":"[尚未定级] "}
team modify Rookie prefix {"text":"[菜鸟] "}
team modify Apprentice prefix {"text":"[学徒] "}
team modify Elite prefix {"text":"[精英] "}
team modify Expert prefix {"text":"[专家] "}
team modify Master prefix {"text":"[大师] "}
team modify Supreme prefix {"text":"[至尊] "}
team modify Legend prefix {"text":"[传奇] "}
team modify God prefix {"text":"[神话] "}
team modify Untitled color gray
team modify Rookie color dark_purple
team modify Apprentice color dark_aqua
team modify Elite color aqua
team modify Expert color green
team modify Master color yellow
team modify Supreme color gold
team modify Legend color red
team modify God color light_purple


execute as @e[tag=reportholder,scores={storedbet=1..}] run scoreboard players operation @s storedbet *= -1 number

