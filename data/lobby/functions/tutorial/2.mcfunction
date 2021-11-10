
execute if score t_pause system matches 1.. as @a[tag=tutorial_hold] at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["control"]}}]}] unless score t_pause2 system matches 1 unless score t_pause3 system matches 1 as @a[tag=tutorial] run playsound minecraft:ui.loom.select_pattern block @s ~ ~ ~ 3 0.1 1
execute if score t_pause system matches 1.. as @a[tag=tutorial_hold] at @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["control"]}}]}] unless score t_pause2 system matches 1 unless score t_pause3 system matches 1 run scoreboard players set t_pause system 0

execute unless score t_pause system matches 1 unless score t_pause2 system matches 1 unless score t_pause3 system matches 1 run scoreboard players add tutorial system 1
scoreboard players set t_pause2 system 0
scoreboard players reset t_hold system
scoreboard players set @a[tag=tutorial] playernumber -2
execute as @e[tag=t_minion] run scoreboard players set @s attack 0
execute as @e[tag=t_mascot] run scoreboard players set @s attack 0
execute as @e[tag=t_minion] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=t_minion] run scoreboard players operation @s attack += @s haloattack
execute as @e[tag=t_mascot] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=t_mascot] run scoreboard players operation @s attack += @s haloattack

execute as @e[tag=t_minion] run function lobby:tutorial/minionhpcheck
execute as @e[tag=t_mascot] run function lobby:tutorial/mascothpcheck
execute as @e[tag=t_minion] run function lobby:tutorial/applybuff

execute as @e[tag=t_mascot] run function lobby:tutorial/checkhand

execute as @e[tag=t_mascot] run scoreboard players set @s damage 0
execute as @e[tag=t_mascot] run scoreboard players operation @s damage += @s truedamage
execute as @e[tag=t_mascot] run scoreboard players operation @s damage += @s halodamage
execute as @e[tag=t_mascot] run scoreboard players set @s[scores={damage=..-1}] damage 0

execute as @e[tag=t_card,scores={handorder=1..}] run scoreboard players set @s cost 0
execute as @e[tag=t_card,scores={handorder=1..}] run scoreboard players operation @s cost += @s truecost
execute as @e[tag=t_card,scores={handorder=1..}] run scoreboard players operation @s cost += @s halocost
execute as @e[tag=t_card,scores={handorder=1..}] run scoreboard players set @s[scores={cost=..-1}] cost 0

execute store result score @e[tag=t_mascot,scores={ownedby=-1}] handcardcount if entity @e[tag=t_card,scores={ownedby=-1,handorder=1..}]
execute store result score @e[tag=t_mascot,scores={ownedby=-2}] handcardcount if entity @e[tag=t_card,scores={ownedby=-2,handorder=1..}]

execute as @e[tag=t_minion,tag=mute,scores={recover=-1}] at @s run particle minecraft:enchant ~ ~0.2 ~ 0 0 0 0.5 3 force
scoreboard players remove @e[tag=t_display,scores={waiting=1..}] waiting 1
execute as @e[tag=t_display] at @s run tp @s ~ ~0.025 ~
execute as @e[tag=t_display,scores={waiting=1}] at @s run kill @s

execute if score tutorial system matches 1 run bossbar remove tutorial_0
execute if score tutorial system matches 1 run bossbar remove tutorial_1
execute if score tutorial system matches 1 run bossbar remove tutorial_2
execute if score tutorial system matches 1 run bossbar remove tutorial_p
execute if score tutorial system matches 1 run bossbar add tutorial_0 {"text":" "}
execute if score tutorial system matches 1 run bossbar add tutorial_1 {"text":" "}
execute if score tutorial system matches 1 run bossbar add tutorial_2 {"text":" "}
execute if score tutorial system matches 1 run bossbar add tutorial_p {"text":""}

execute if score tutorial system matches 2 as @a[tag=tutorial] run playsound minecraft:ui.loom.select_pattern block @s ~ ~ ~ 3 0.1 1
execute if score tutorial system matches 2 run summon minecraft:armor_stand -203 18.5 79 {ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:104}}],ShowArms:1,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,Invulnerable:1b,DisabledSlots:2039583,Tags:["lobby","tutorial","t_player","display"]}
execute if score tutorial system matches 2 run scoreboard players set @e[tag=t_player] playernumber -1
execute if score tutorial system matches 2 run bossbar set tutorial_1 name {"text":"欢迎来到《次元召唤》-新手教学","color":"white","bold":"true"}
execute if score tutorial system matches 2 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 3 run scoreboard players set t_pause system 1

execute if score tutorial system matches 4 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"我们刚刚完成了V21.8.25的更新","color":"white","bold":"true"}]
execute if score tutorial system matches 5 run scoreboard players set t_pause system 1


execute if score tutorial system matches 6 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"有一些东西你必须熟悉一下","color":"white","bold":"true"}]
execute if score tutorial system matches 7 run scoreboard players set t_pause system 1


execute if score tutorial system matches 8 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"我稍微布置一下...","color":"white","bold":"true"}]
execute if score tutorial system matches 8 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}

execute if score tutorial system matches 19 as @e[tag=tutorial] at @s run playsound minecraft:ui.cartography_table.take_result block @s ~ ~ ~ 3 2 1
execute if score tutorial system matches 19 run summon minecraft:armor_stand -200.5 18 75.5 {CustomName:"[{\"text\":\"兰斯洛特\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","lansiluote"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:24030}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -202.5 18 75.5 {CustomName:"[{\"text\":\"阿斯莫德\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","asimode"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:54070}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -204.5 18 75.5 {CustomName:"[{\"text\":\"迈德战士\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","maidezhanshi"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:44050}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -204.5 18 77.5 {CustomName:"[{\"text\":\"杂兵A\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","zabing1"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:4010}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -202.5 18 77.5 {CustomName:"[{\"text\":\"贝弗卡\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","beifuka"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:4020}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -200.5 18 77.5 {CustomName:"[{\"text\":\"杂兵B\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","zabing2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:4010}}]}
execute if score tutorial system matches 19 as @e[tag=t_minion] run function lobby:display/minionset3
execute if score tutorial system matches 19 as @e[tag=t_minion] run function ingame:getminionid
execute if score tutorial system matches 19 as @e[tag=t_minion] run scoreboard players operation @s hp = @s basic_hp
execute if score tutorial system matches 19 as @e[tag=t_minion] run scoreboard players operation @s trueattack = @s basic_attack
execute if score tutorial system matches 19 as @e[tag=t_minion] run scoreboard players operation @s truecost = @s basic_cost
execute if score tutorial system matches 19 run scoreboard players set @e[tag=lansiluote,tag=t_minion] ownedby -2
execute if score tutorial system matches 19 run scoreboard players set @e[tag=lansiluote,tag=t_minion] minionboard 1
execute if score tutorial system matches 19 run scoreboard players set @e[tag=lansiluote,tag=t_minion] minioncode 1
execute if score tutorial system matches 19 run scoreboard players set @e[tag=asimode,tag=t_minion] ownedby -2
execute if score tutorial system matches 19 run scoreboard players set @e[tag=asimode,tag=t_minion] minionboard 2
execute if score tutorial system matches 19 run scoreboard players set @e[tag=asimode,tag=t_minion] minioncode 2
execute if score tutorial system matches 19 run scoreboard players set @e[tag=maidezhanshi,tag=t_minion] ownedby -2
execute if score tutorial system matches 19 run scoreboard players set @e[tag=maidezhanshi,tag=t_minion] minionboard 3
execute if score tutorial system matches 19 run scoreboard players set @e[tag=maidezhanshi,tag=t_minion] minioncode 3
execute if score tutorial system matches 19 run scoreboard players set @e[tag=zabing1,tag=t_minion] ownedby -1
execute if score tutorial system matches 19 run scoreboard players set @e[tag=zabing1,tag=t_minion] minionboard 3
execute if score tutorial system matches 19 run scoreboard players set @e[tag=zabing1,tag=t_minion] minioncode 4
execute if score tutorial system matches 19 run scoreboard players set @e[tag=beifuka,tag=t_minion] ownedby -1
execute if score tutorial system matches 19 run scoreboard players set @e[tag=beifuka,tag=t_minion] minionboard 2
execute if score tutorial system matches 19 run scoreboard players set @e[tag=beifuka,tag=t_minion] minioncode 5
execute if score tutorial system matches 19 run scoreboard players set @e[tag=zabing2,tag=t_minion] ownedby -1
execute if score tutorial system matches 19 run scoreboard players set @e[tag=zabing2,tag=t_minion] minionboard 1
execute if score tutorial system matches 19 run scoreboard players set @e[tag=zabing2,tag=t_minion] minioncode 6
execute if score tutorial system matches 19 run scoreboard players set @e[tag=t_minion] recover -2
execute if score tutorial system matches 25 as @e[tag=tutorial] at @s run playsound minecraft:ui.cartography_table.take_result block @s ~ ~ ~ 3 2 1
execute if score tutorial system matches 25 as @e[tag=t_minion] run function lobby:tutorial/3
execute if score tutorial system matches 25 run summon minecraft:armor_stand -207 19 73 {CustomName:"[{\"text\":\"你\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:1}}],ShowArms:1,Rotation:[-50f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,Invulnerable:1b,DisabledSlots:2039583,Tags:["lobby","tutorial","button2","t_mascot","ownedby2","display"]}
execute if score tutorial system matches 25 run summon minecraft:armor_stand -199 19 79 {CustomName:"[{\"text\":\"凯文博士\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:2}}],ShowArms:1,Rotation:[130f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,Invulnerable:1b,DisabledSlots:2039583,Tags:["lobby","tutorial","button2","t_mascot","ownedby1","display"]}
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] hp 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] hp 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] hplimit 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] hplimit 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] mana 0
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] mana 0
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] manalimit 0
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] manalimit 0
execute if score tutorial system matches 30 as @e[tag=tutorial] at @s run playsound minecraft:ui.cartography_table.take_result block @s ~ ~ ~ 3 2 1
execute if score tutorial system matches 30 run summon minecraft:armor_stand -203 22.45 76 {CustomName:"[{\"text\":\"回合结束\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_endround"],Invisible:1,DisabledSlots:1039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -207 19.65 76 {Tags:["tutorial","button2","t_deck","ownedby1"],Invisible:1,DisabledSlots:1039583,Rotation:[-40f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:101}}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -199 19.65 76 {Tags:["tutorial","button2","t_deck","ownedby2"],Invisible:1,DisabledSlots:1039583,Rotation:[140f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:101}}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -207 20.65 79 {Tags:["tutorial","button2","t_dcpile","ownedby1"],Invisible:1,DisabledSlots:1039583,Rotation:[-90f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:102}}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -199 20.65 73 {Tags:["tutorial","button2","t_dcpile","ownedby2"],Invisible:1,DisabledSlots:1039583,Rotation:[90f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:102}}]}
execute if score tutorial system matches 30 run scoreboard players set @e[tag=tutorial,tag=ownedby1] ownedby -1
execute if score tutorial system matches 30 run scoreboard players set @e[tag=tutorial,tag=ownedby2] ownedby -2
execute if score tutorial system matches 30 as @e[tag=t_mascot] run function lobby:tutorial/4

execute if score tutorial system matches 30 run function lobby:tutorial/5
execute if score tutorial system matches 30 as @e[tag=t_deck] at @s run function lobby:tutorial/setdeck

execute if score tutorial system matches 40 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"差不多可以开始了","color":"white","bold":"true"}]
execute if score tutorial system matches 40 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 41 run scoreboard players set t_pause system 1

execute if score tutorial system matches 42 run effect give @e[tag=t_deck,tag=ownedby2] glowing 1000000 0 true
execute if score tutorial system matches 42 as @a[tag=tutorial] at @s facing entity @e[tag=t_deck,tag=ownedby2] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 42 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这是你的","color":"white","bold":"true"},{"text":"牌堆","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 42 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 43 run scoreboard players set t_pause system 1

execute if score tutorial system matches 44 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"一般来说，牌堆由","color":"white","bold":"true"},{"text":"你选择的16张牌","color":"white","bold":"true","underlined":"true"},{"text":"构成","color":"white","bold":"true"}]
execute if score tutorial system matches 44 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 45 run scoreboard players set t_pause system 1

execute if score tutorial system matches 46 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"不过为了缩短流程，我们拿掉了一些牌","color":"white","bold":"true"}]
execute if score tutorial system matches 46 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 47 run scoreboard players set t_pause system 1

execute if score tutorial system matches 48 run effect clear @e[tag=t_deck,tag=ownedby2] glowing
execute if score tutorial system matches 48 run effect give @e[tag=t_deck,tag=ownedby1] glowing 1000000 0 true
execute if score tutorial system matches 48 as @a[tag=tutorial] at @s facing entity @e[tag=t_deck,tag=ownedby1] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 48 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"我的牌堆位于你的右侧","color":"white","bold":"true"}]
execute if score tutorial system matches 48 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 49 run scoreboard players set t_pause system 1

execute if score tutorial system matches 50 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"公平起见，我的牌和你一样","color":"white","bold":"true"}]
execute if score tutorial system matches 50 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 51 run scoreboard players set t_pause system 1

execute if score tutorial system matches 52 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"在对局开始前，每名牌手需要","color":"white","bold":"true"},{"text":"抽三张牌","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 52 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 53 run scoreboard players set t_pause system 1

execute if score tutorial system matches 54 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"一般来说，","color":"white","bold":"true"},{"text":"抽牌","color":"white","bold":"true","underlined":"true"},{"text":"是抽你牌堆顶的牌","color":"white","bold":"true"}]
execute if score tutorial system matches 54 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 55 run scoreboard players set t_pause system 1

execute if score tutorial system matches 56.. as @a[tag=tutorial_hold] run function lobby:tutorial/select
execute if score tutorial system matches 56.. as @e[tag=t_player,tag=tutorial,type=!player] run function lobby:tutorial/select
execute if score tutorial system matches 56 as @e[tag=t_player,tag=tutorial,type=!player] run scoreboard players set @s hoverhotbar 2
execute if score tutorial system matches 56 run effect clear @e[tag=t_deck,tag=ownedby1] glowing
execute if score tutorial system matches 56 run bossbar set tutorial_1 name [{"text":""}]
execute if score tutorial system matches 56 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 56 as @e[tag=t_mascot] run function lobby:tutorial/draw
execute if score tutorial system matches 56 as @e[tag=t_mascot] run function lobby:tutorial/draw
execute if score tutorial system matches 56 as @e[tag=t_mascot] run function lobby:tutorial/draw
execute if score tutorial system matches 66 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 67 run scoreboard players set t_pause system 1

execute if score tutorial system matches 68 as @a[tag=tutorial] at @s facing entity @e[tag=t_card,scores={ownedby=-2,handorder=2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 68 run effect give @e[tag=t_card,scores={ownedby=-2,handorder=1..3}] glowing 1000000 0 true
execute if score tutorial system matches 68 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这些牌称为","color":"white","bold":"true"},{"text":"手牌","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 68 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 69 run scoreboard players set t_pause system 1

execute if score tutorial system matches 70 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你的","color":"white","bold":"true"},{"text":"手牌上限","color":"white","bold":"true","underlined":"true"},{"text":"为7","color":"white","bold":"true"}]
execute if score tutorial system matches 70 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 71 run scoreboard players set t_pause system 1

execute if score tutorial system matches 72 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"也就是说你无法同时拥有8张或更多手牌","color":"white","bold":"true"}]
execute if score tutorial system matches 72 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 73 run scoreboard players set t_pause system 1

execute if score tutorial system matches 74 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,scores={ownedby=-2,minionboard=2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 74 run effect clear @e[tag=t_card] glowing
execute if score tutorial system matches 74 run effect give @e[tag=t_minion] glowing 1000000 0 true
execute if score tutorial system matches 74 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这些是","color":"white","bold":"true"},{"text":"随从","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 74 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 75 run scoreboard players set t_pause system 1

execute if score tutorial system matches 76 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,scores={ownedby=-1,minionboard=2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 76 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"它们拥有独特的技能，来为你取得胜利","color":"white","bold":"true"}]
execute if score tutorial system matches 76 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 77 run scoreboard players set t_pause system 1

execute if score tutorial system matches 78 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"对战开始时，随从均处于","color":"white","bold":"true"},{"text":"离场","color":"white","bold":"true","underlined":"true"},{"text":"状态","color":"white","bold":"true"}]
execute if score tutorial system matches 78 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 79 run scoreboard players set t_pause system 1

execute if score tutorial system matches 80 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"玩家无法查看对方的","color":"white","bold":"true"},{"text":"离场","color":"white","bold":"true","underlined":"true"},{"text":"随从","color":"white","bold":"true"}]
execute if score tutorial system matches 80 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 81 run scoreboard players set t_pause system 1

execute if score tutorial system matches 82 as @a[tag=tutorial] at @s facing entity @e[tag=t_mascot,scores={ownedby=-2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 82 run effect clear @e[tag=t_minion] glowing
execute if score tutorial system matches 82 run effect give @e[tag=t_mascot,scores={ownedby=-2}] glowing 1000000 0 true
execute if score tutorial system matches 82 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这是你的","color":"white","bold":"true"},{"text":"牌手","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 82 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 83 run scoreboard players set t_pause system 1

execute if score tutorial system matches 84 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你可以将它理解为你的化身或代表","color":"white","bold":"true"}]
execute if score tutorial system matches 84 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 85 run scoreboard players set t_pause system 1

execute if score tutorial system matches 86 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"总之，它的存活决定你的胜败","color":"white","bold":"true"}]
execute if score tutorial system matches 86 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 87 run scoreboard players set t_pause system 1

execute if score tutorial system matches 88 as @a[tag=tutorial] at @s facing entity @e[tag=t_mascot,scores={ownedby=-1}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 88 run effect clear @e[tag=t_mascot] glowing
execute if score tutorial system matches 88 run effect give @e[tag=t_mascot,scores={ownedby=-1}] glowing 1000000 0 true
execute if score tutorial system matches 88 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"所以击杀我的","color":"white","bold":"true"},{"text":"牌手","color":"white","bold":"true","underlined":"true"},{"text":"便是你的获胜目标","color":"white","bold":"true"}]
execute if score tutorial system matches 88 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 89 run scoreboard players set t_pause system 1

execute if score tutorial system matches 90 run effect clear @e[tag=t_mascot] glowing
execute if score tutorial system matches 90 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"牌手","color":"white","bold":"true","underlined":"true"},{"text":"拥有30点生命，在跌至0或更低时阵亡","color":"white","bold":"true"}]
execute if score tutorial system matches 90 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 91 run scoreboard players set t_pause system 1

execute if score tutorial system matches 92 run title @a[tag=tutorial] title [{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合开始","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score tutorial system matches 92 as @a[tag=tutorial] run title @s times 10 20 10
execute if score tutorial system matches 92 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 92 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s manalimit 1
execute if score tutorial system matches 92 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 1
execute if score tutorial system matches 92 run scoreboard players set t_system round 1
execute if score tutorial system matches 92 as @e[tag=t_mascot,tag=ownedby2] run tag @s add onturn
execute if score tutorial system matches 92 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"对局开始了，你是","color":"white","bold":"true"},{"text":"先手","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 92 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 93 run scoreboard players set t_pause system 1

execute if score tutorial system matches 94 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"一般来说，牌手的回合开始时必须抽一次牌","color":"white","bold":"true"}]
execute if score tutorial system matches 94 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 95 run scoreboard players set t_pause system 1

execute if score tutorial system matches 96 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"但","color":"white","bold":"true"},{"text":"先手","color":"white","bold":"true","underlined":"true"},{"text":"的第一个回合无法抽牌","color":"white","bold":"true"}]
execute if score tutorial system matches 96 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 97 run scoreboard players set t_pause system 1

execute if score tutorial system matches 98 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你血条右侧的蓝色圆圈代表","color":"white","bold":"true"},{"text":"能量","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 98 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 99 run scoreboard players set t_pause system 1

execute if score tutorial system matches 100 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你的操作将消耗","color":"white","bold":"true"},{"text":"能量","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 100 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 101 run scoreboard players set t_pause system 1

execute if score tutorial system matches 102 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"那就让我们试着进行一些操作吧","color":"white","bold":"true"}]
execute if score tutorial system matches 102 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 103 run scoreboard players set t_pause system 1

execute if score tutorial system matches 104 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"使用数字键或滚轮选定物品栏中的","color":"white","bold":"true"},{"text":"随从指令","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run scoreboard players set t_pause2 system 1
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run scoreboard players set t_pause system 1


execute if score tutorial system matches 1.. as @a[tag=tutorial_hold,scores={rightclick=1..,hoverhotbar=0}] at @s run function lobby:tutorial/attacktestonturn
execute if score tutorial system matches 1.. as @a[tag=tutorial_hold,scores={rightclick=1..,sneak=0,hoverhotbar=1..7}] at @s run function lobby:tutorial/usecard1
execute if score tutorial system matches 1.. as @a[tag=tutorial_hold,scores={rightclick=1..,sneak=0,hoverhotbar=8}] at @s run function lobby:tutorial/datacheck
execute if score tutorial system matches 106 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=lansiluote] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 106 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 106 run tag @e remove t_pass
execute if score tutorial system matches 106 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"然后瞄准这个随从并点击右键","color":"white","bold":"true"}]
execute if score tutorial system matches 107 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 107 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 107 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1


execute if score tutorial system matches 108 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这个操作使此随从","color":"white","bold":"true"},{"text":"入场","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 108 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 108 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 108 run tag @e remove t_pass
execute if score tutorial system matches 108 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-2}] mana 0
execute if score tutorial system matches 108 as @e[tag=lansiluote] at @s run function lobby:tutorial/event/enter

execute if score tutorial system matches 119 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 120 run scoreboard players set t_pause system 1

execute if score tutorial system matches 121 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"此时你可以","color":"white","bold":"true"},{"text":"结束回合","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 121 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 122 run scoreboard players set t_pause system 1

execute if score tutorial system matches 123 as @a[tag=tutorial] at @s facing entity @e[tag=t_endround] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 123 run tag @e remove t_pass
execute if score tutorial system matches 123 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"右键点击","color":"white","bold":"true"},{"text":"回合结束","color":"white","bold":"true","underlined":"true"},{"text":"按钮","color":"white","bold":"true"}]
execute if score tutorial system matches 124 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 124 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 124 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=t_endround] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 125 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这个操作使敌方牌手的回合开始","color":"white","bold":"true"}]
execute if score tutorial system matches 125 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 125 run tag @e remove t_pass
execute if score tutorial system matches 125 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 125 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-1}] mana 2
execute if score tutorial system matches 125 as @e[tag=t_mascot,scores={ownedby=-1}] run scoreboard players set @s manalimit 1
execute if score tutorial system matches 125 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 125 as @e[tag=t_mascot,scores={ownedby=-1}] run tag @s add onturn
execute if score tutorial system matches 125 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run function lobby:tutorial/drawcard

execute if score tutorial system matches 140 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 141 run scoreboard players set t_pause system 1

execute if score tutorial system matches 142 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你可以选定","color":"white","bold":"true"},{"text":"信息查询","color":"white","bold":"true","underlined":"true"},{"text":"并右键来了解","color":"white","bold":"true"}]
execute if score tutorial system matches 142 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 143 run scoreboard players set t_pause system 1

execute if score tutorial system matches 144 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"我的第一个回合获得2点","color":"white","bold":"true"},{"text":"能量","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 144 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 155 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 155 as @e[tag=t_mascot,tag=ownedby1] run scoreboard players set @s mana 1
execute if score tutorial system matches 166 as @e[tag=t_minion,tag=zabing2] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 166 as @e[tag=t_mascot,tag=ownedby1] run scoreboard players set @s mana 0
execute if score tutorial system matches 166 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 167 run scoreboard players set t_pause system 1

execute if score tutorial system matches 168 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"该你了","color":"white","bold":"true"}]
execute if score tutorial system matches 168 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 168 run title @a[tag=tutorial] title [{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合开始","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score tutorial system matches 168 as @a[tag=tutorial] run title @s times 10 20 10
execute if score tutorial system matches 168 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 168 run scoreboard players set t_system round 2
execute if score tutorial system matches 168 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s manalimit 2
execute if score tutorial system matches 168 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 2
execute if score tutorial system matches 168 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 168 as @e[tag=t_mascot,tag=ownedby2] run tag @s add onturn
execute if score tutorial system matches 168 as @e[tag=t_mascot,tag=onturn] at @s run function lobby:tutorial/drawcard
execute if score tutorial system matches 169 run scoreboard players set t_pause system 1

execute if score tutorial system matches 170 run tag @e remove t_pass
execute if score tutorial system matches 170 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=asimode] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 171 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"试着令这个随从","color":"white","bold":"true"},{"text":"入场","color":"white","bold":"true","underlined":"true"},{"text":"，你应该没忘吧","color":"white","bold":"true"}]
execute if score tutorial system matches 171 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 171 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 171 run effect give @e[tag=t_minion,tag=asimode] glowing 1000000 0 true
execute if score tutorial system matches 171 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=asimode] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 172 run tag @e remove t_pass
execute if score tutorial system matches 172 run effect clear @e[tag=t_minion,tag=asimode] glowing
execute if score tutorial system matches 172 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"可以，你学的很快","color":"white","bold":"true"}]
execute if score tutorial system matches 172 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 172 as @e[tag=t_minion,tag=asimode] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 172 as @e[tag=t_minion,tag=asimode] run tag @s add addpuzzle
execute if score tutorial system matches 172 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 1
execute if score tutorial system matches 173 run scoreboard players set t_pause system 1

execute if score tutorial system matches 174 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你还有1点","color":"white","bold":"true"},{"text":"能量","color":"white","bold":"true","underlined":"true"},{"text":"，用来进攻吧","color":"white","bold":"true"}]
execute if score tutorial system matches 174 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 175 run scoreboard players set t_pause system 1

execute if score tutorial system matches 176 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"随从在入场的回合无法攻击","color":"white","bold":"true"}]
execute if score tutorial system matches 176 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 177 run scoreboard players set t_pause system 1

execute if score tutorial system matches 178 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"所以试着对兰斯洛特下达攻击指令吧","color":"white","bold":"true"}]
execute if score tutorial system matches 178 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 179 run scoreboard players set t_pause system 1

execute if score tutorial system matches 180 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"和入场的操作一样","color":"white","bold":"true"}]
execute if score tutorial system matches 180 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=lansiluote] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 180 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 180 run tag @e remove t_pass
execute if score tutorial system matches 181 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 181 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 181 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 182 run tag @e remove t_pass
execute if score tutorial system matches 182 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion
execute if score tutorial system matches 182 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"随从攻击将默认攻击对位随从","color":"white","bold":"true"}]
execute if score tutorial system matches 182 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 182 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 182 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 0
execute if score tutorial system matches 182 run effect give @e[tag=t_minion,tag=zabing2] glowing 1000000 0 true
execute if score tutorial system matches 183 run scoreboard players set t_pause system 1

execute if score tutorial system matches 184..186 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion2
execute if score tutorial system matches 187 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"接下来是重要的部分，注意看","color":"white","bold":"true"}]
execute if score tutorial system matches 187 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 188 run scoreboard players set t_pause system 1

execute if score tutorial system matches 189 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"攻击方造成等同于其","color":"white","bold":"true"},{"text":"攻击力","color":"white","bold":"true","underlined":"true"},{"text":"的伤害","color":"white","bold":"true"}]
execute if score tutorial system matches 189 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 190 run scoreboard players set t_pause system 1

execute if score tutorial system matches 191 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"然后受到等同于攻击目标","color":"white","bold":"true"},{"text":"攻击力","color":"white","bold":"true","underlined":"true"},{"text":"的伤害","color":"white","bold":"true"}]
execute if score tutorial system matches 191 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 192 run scoreboard players set t_pause system 1

execute if score tutorial system matches 193 run bossbar set tutorial_1 name [{"text":""}]
execute if score tutorial system matches 193 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 193 as @e[tag=t_minion,tag=lansiluote] at @s run scoreboard players set @s dmgtaken 3
execute if score tutorial system matches 193 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 194 as @e[tag=t_minion,tag=zabing2] at @s run scoreboard players set @s dmgtaken 6
execute if score tutorial system matches 194 as @e[tag=t_minion,tag=zabing2] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 195..197 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion3
execute if score tutorial system matches 198 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion4
execute if score tutorial system matches 198 run effect clear @e[tag=t_minion,tag=zabing2] glowing
execute if score tutorial system matches 198 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"兰斯洛特发动了技能","color":"white","bold":"true"}]
execute if score tutorial system matches 198 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 199 run scoreboard players set t_pause system 1

execute if score tutorial system matches 200 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你因此获得了1点","color":"white","bold":"true"},{"text":"能量","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 200 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 200 as @e[tag=t_minion,tag=lansiluote] at @s run particle minecraft:dust 0 1 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score tutorial system matches 200 as @e[tag=t_minion,tag=lansiluote] at @s run playsound minecraft:entity.illusioner.cast_spell block @a[tag=tutorial] ~ ~ ~ 3 2 1
execute if score tutorial system matches 200 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 1
execute if score tutorial system matches 201 run scoreboard players set t_pause system 1

execute if score tutorial system matches 202 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"兰斯洛特的攻击次数达到上限了","color":"white","bold":"true"}]
execute if score tutorial system matches 202 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 203 run scoreboard players set t_pause system 1

execute if score tutorial system matches 204 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"不过你可以使用你的","color":"white","bold":"true"},{"text":"手牌","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 204 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 205 run scoreboard players set t_pause system 1

execute if score tutorial system matches 206 run effect give @e[tag=t_minion,tag=zabing2] glowing 1000000 0 true
execute if score tutorial system matches 206 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"用数字键锁定","color":"white","bold":"true"},{"text":"手牌","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 207 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 1 run bossbar set tutorial_2 name {"text":"请选定“空袭”...","color":"white","bold":"false"}
execute if score tutorial system matches 207 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 1 run bossbar set tutorial_2 name {"text":"瞄准目标，按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 207 as @a[tag=tutorial_hold] run scoreboard players set t_pause3 system 1

execute if score tutorial system matches 208 as @e[tag=t_card,scores={cardid=1020,ownedby=-2}] at @s run function lobby:tutorial/discard
execute if score tutorial system matches 208 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 0
execute if score tutorial system matches 208 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你使用这张牌","color":"white","bold":"true"},{"text":"击杀","color":"white","bold":"true","underlined":"true"},{"text":"了这个随从","color":"white","bold":"true"}]
execute if score tutorial system matches 208 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 218 as @e[tag=t_minion,tag=zabing2] at @s run scoreboard players set @s dmgtaken 5
execute if score tutorial system matches 218 as @e[tag=t_minion,tag=zabing2] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 218 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 219 as @a[tag=tutorial_hold] run scoreboard players set t_pause system 1

execute if score tutorial system matches 220 as @e[tag=zabing2,tag=t_minion] at @s run function lobby:tutorial/miniondie
execute if score tutorial system matches 220 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"它将在3回合后复活（","color":"white","bold":"true"},{"text":"休眠","color":"white","bold":"true","underlined":"true"},{"text":"3回合）","color":"white","bold":"true"}]
execute if score tutorial system matches 220 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 221 as @a[tag=tutorial_hold] run scoreboard players set t_pause system 1

execute if score tutorial system matches 222 run tag @e remove t_pass
execute if score tutorial system matches 222 run effect clear @e[tag=t_minion,tag=zabing2] glowing
execute if score tutorial system matches 222 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"右键点击","color":"white","bold":"true"},{"text":"回合结束","color":"white","bold":"true","underlined":"true"},{"text":"按钮","color":"white","bold":"true"}]
execute if score tutorial system matches 223 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 223 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 223 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=t_endround] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 224 run tag @e remove t_pass
execute if score tutorial system matches 224 run effect give @e[tag=t_minion,tag=asimode] glowing 1000000 0 true
execute if score tutorial system matches 224 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 224 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-1}] mana 2
execute if score tutorial system matches 224 as @e[tag=t_mascot,scores={ownedby=-1}] run scoreboard players set @s manalimit 2
execute if score tutorial system matches 224 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 224 as @e[tag=t_mascot,scores={ownedby=-1}] run tag @s add onturn
execute if score tutorial system matches 224 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run function lobby:tutorial/drawcard
execute if score tutorial system matches 224 as @e[tag=t_deck,tag=ownedby1] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 103
execute if score tutorial system matches 224 as @e[tag=t_minion,tag=zabing2] run scoreboard players set @s recover 2
execute if score tutorial system matches 224 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"看阿斯莫德数值下方的图标","color":"white","bold":"true"}]
execute if score tutorial system matches 224 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 225 as @a[tag=tutorial_hold] run scoreboard players set t_pause system 1

execute if score tutorial system matches 226 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这表示它将成为我的随从的攻击目标","color":"white","bold":"true"}]
execute if score tutorial system matches 226 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 227 run scoreboard players set t_pause system 1

execute if score tutorial system matches 228 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-1}] mana 1
execute if score tutorial system matches 228 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion
execute if score tutorial system matches 228 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这表示它将成为我的随从的攻击目标","color":"white","bold":"true"}]
execute if score tutorial system matches 228 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 229 run scoreboard players set t_pause system 1

execute if score tutorial system matches 230 run bossbar set tutorial_1 name [{"text":""}]
execute if score tutorial system matches 230 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 230..232 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion2
execute if score tutorial system matches 233 as @e[tag=t_minion,tag=zabing1] at @s run scoreboard players set @s dmgtaken 6
execute if score tutorial system matches 233 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 234 as @e[tag=t_minion,tag=asimode] at @s run scoreboard players set @s dmgtaken 3
execute if score tutorial system matches 234 as @e[tag=t_minion,tag=asimode] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 235..237 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion3
execute if score tutorial system matches 238 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion4
execute if score tutorial system matches 238 run effect clear @e[tag=t_minion,tag=asimode] glowing
execute if score tutorial system matches 248 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"除了以外，还有、等许多图标","color":"white","bold":"true"}]
execute if score tutorial system matches 248 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 249 run scoreboard players set t_pause system 1

execute if score tutorial system matches 250 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"他们表示这个随从能够产生一些特殊效果","color":"white","bold":"true"}]
execute if score tutorial system matches 250 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 251 run scoreboard players set t_pause system 1

execute if score tutorial system matches 252 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"游戏中你将可以在背包中查询这些","color":"white","bold":"true"}]
execute if score tutorial system matches 252 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 253 run scoreboard players set t_pause system 1

execute if score tutorial system matches 254 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"我令贝弗卡","color":"white","bold":"true"},{"text":"入场","color":"white","bold":"true","underlined":"true"},{"text":"，它将发动技能","color":"white","bold":"true"}]
execute if score tutorial system matches 254 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 260 as @e[tag=t_minion,tag=beifuka] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 260 as @e[tag=t_mascot,tag=ownedby1] run scoreboard players set @s mana 0
execute if score tutorial system matches 269 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 270 run scoreboard players set t_pause system 1

execute if score tutorial system matches 271 as @e[tag=t_minion,tag=beifuka] at @s run particle minecraft:dust_color_transition 0 0 0 2 1 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score tutorial system matches 271 as @e[tag=t_minion,tag=beifuka] at @s run playsound minecraft:entity.illusioner.cast_spell block @a[tag=tutorial] ~ ~ ~ 3 2 1
execute if score tutorial system matches 271 as @e[tag=t_minion,scores={recover=-1},tag=!beifuka] run function lobby:tutorial/mute
execute if score tutorial system matches 271 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"贝弗卡发动技能，","color":"white","bold":"true"},{"text":"沉默","color":"white","bold":"true","underlined":"true"},{"text":"了其他随从","color":"white","bold":"true"}]
execute if score tutorial system matches 271 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 272 run scoreboard players set t_pause system 1

execute if score tutorial system matches 271 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"沉默","color":"white","bold":"true","underlined":"true"},{"text":"会使随从失去增益...","color":"white","bold":"true"}]
execute if score tutorial system matches 271 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 272 run scoreboard players set t_pause system 1

execute if score tutorial system matches 273 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"并无法发动技能","color":"white","bold":"true"}]
execute if score tutorial system matches 273 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 274 run scoreboard players set t_pause system 1

execute if score tutorial system matches 275 run title @a[tag=tutorial] title [{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合开始","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score tutorial system matches 275 as @a[tag=tutorial] run title @s times 10 20 10
execute if score tutorial system matches 275 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 275 run scoreboard players set t_system round 3
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s manalimit 3
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 3
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=ownedby2] run tag @s add onturn
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=onturn] at @s run function lobby:tutorial/drawcard
execute if score tutorial system matches 275 as @e[tag=t_deck,tag=ownedby2] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 103
execute if score tutorial system matches 275 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"现在，再一次让兰斯洛特攻击试试","color":"white","bold":"true"}]
execute if score tutorial system matches 275 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=lansiluote] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 275 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 275 run tag @e remove t_pass
execute if score tutorial system matches 276 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 276 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 276 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 277 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 277 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-2}] mana 2
execute if score tutorial system matches 278 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion
execute if score tutorial system matches 279..284 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion2
execute if score tutorial system matches 285 as @e[tag=t_mascot,tag=ownedby1] at @s run scoreboard players set @s dmgtaken 6
execute if score tutorial system matches 285 as @e[tag=t_mascot,tag=ownedby1] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 286..291 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion3
execute if score tutorial system matches 292 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion4
execute if score tutorial system matches 293 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"若一个随从的","color":"white","bold":"true"},{"text":"对位随从","color":"white","bold":"true","underlined":"true"},{"text":"离场或休眠...","color":"white","bold":"true"}]
execute if score tutorial system matches 293 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 294 run scoreboard players set t_pause system 1

execute if score tutorial system matches 295 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 295 run tag @e remove t_pass
execute if score tutorial system matches 295 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"它将直接攻击","color":"white","bold":"true"},{"text":"敌方牌手","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 295 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 296 run scoreboard players set t_pause system 1

execute if score tutorial system matches 297 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"当","color":"white","bold":"true"},{"text":"敌方牌手","color":"white","bold":"true","underlined":"true"},{"text":"的生命值为0或更低时...","color":"white","bold":"true"}]
execute if score tutorial system matches 297 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 298 run scoreboard players set t_pause system 1

execute if score tutorial system matches 299 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"你就赢得了这场对局","color":"white","bold":"true"}]
execute if score tutorial system matches 299 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 300 run scoreboard players set t_pause system 1

execute if score tutorial system matches 301 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"现在，试试看","color":"white","bold":"true"},{"text":"换位","color":"white","bold":"true","underlined":"true"},{"text":"吧","color":"white","bold":"true"}]
execute if score tutorial system matches 301 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 302 run scoreboard players set t_pause system 1

execute if score tutorial system matches 303 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 303 run tag @e remove t_pass
execute if score tutorial system matches 304 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"潜行，并用","color":"white","bold":"true"},{"text":"随从指令","color":"white","bold":"true","underlined":"true"},{"text":"点击两侧的己方随从","color":"white","bold":"true"}]
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 unless score @s sneak matches 1 run bossbar set tutorial_2 name {"text":"请按住[潜行]...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 if score @s sneak matches 1 run bossbar set tutorial_2 name {"text":"按[右键]以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 305 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 305 run tag @e remove t_pass
execute if score tutorial system matches 305 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/switch
execute if score tutorial system matches 305 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-2}] mana 1
execute if score tutorial system matches 305 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"它将和中间的随从进行","color":"white","bold":"true"},{"text":"换位","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 305 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 306 run scoreboard players set t_pause system 1

execute if score tutorial system matches 305 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"换位","color":"white","bold":"true","underlined":"true"},{"text":"的两个随从必须至少有一个符合“条件”","color":"white","bold":"true"}]
execute if score tutorial system matches 305 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 306 run scoreboard players set t_pause system 1

execute if score tutorial system matches 307 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"不得处于","color":"white","bold":"true"},{"text":"休眠","color":"white","bold":"true","underlined":"true"},{"text":"/","color":"white","bold":"true"},{"text":"眩晕","color":"white","bold":"true","underlined":"true"},{"text":"/","color":"white","bold":"true"},{"text":"离场","color":"white","bold":"true","underlined":"true"},{"text":"/","color":"white","bold":"true"},{"text":"不可换位","color":"white","bold":"true","underlined":"true"},{"text":"状态","color":"white","bold":"true"}]
execute if score tutorial system matches 307 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 308 run scoreboard players set t_pause system 1

execute if score tutorial system matches 309 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"否则无法开始","color":"white","bold":"true"},{"text":"换位","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 309 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 310 run scoreboard players set t_pause system 1

execute if score tutorial system matches 311 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"同样的，换位也会消耗1点","color":"white","bold":"true"},{"text":"能量","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 311 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 312 run scoreboard players set t_pause system 1

execute if score tutorial system matches 313 run effect give @e[tag=t_deck,tag=ownedby1] glowing 1000000 0 true
execute if score tutorial system matches 313 as @a[tag=tutorial] at @s facing entity @e[tag=t_deck,tag=ownedby1] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 313 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"也许你已经注意到我的牌堆变红了","color":"white","bold":"true"}]
execute if score tutorial system matches 313 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 314 run scoreboard players set t_pause system 1

execute if score tutorial system matches 315 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这表明我的牌堆内已经没有牌了","color":"white","bold":"true"}]
execute if score tutorial system matches 315 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 316 run scoreboard players set t_pause system 1

execute if score tutorial system matches 317 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这时如果我再进行抽牌，我将立刻输掉对局","color":"white","bold":"true"}]
execute if score tutorial system matches 317 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 318 run scoreboard players set t_pause system 1

execute if score tutorial system matches 319 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"而牌手在回合开始时将进行一次抽牌","color":"white","bold":"true"}]
execute if score tutorial system matches 319 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 320 run scoreboard players set t_pause system 1

execute if score tutorial system matches 321 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"我想你应该明白你该如何赢得这场对局了吧","color":"white","bold":"true"}]
execute if score tutorial system matches 321 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 322 run scoreboard players set t_pause system 1

execute if score tutorial system matches 323 run tag @e remove t_pass
execute if score tutorial system matches 324 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"试试看吧","color":"white","bold":"true"}]
execute if score tutorial system matches 324 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"请选定“随从指令”...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 324 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"结束回合以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 324 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=t_endround] run scoreboard players set t_pause2 system 1


execute if score tutorial system matches 326 run tag @e remove t_pass
execute if score tutorial system matches 326 as @e[tag=t_minion,tag=zabing2] run scoreboard players set @s recover 1
execute if score tutorial system matches 326 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 326 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-1}] mana 3
execute if score tutorial system matches 326 as @e[tag=t_mascot,scores={ownedby=-1}] run scoreboard players set @s manalimit 3
execute if score tutorial system matches 326 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 326 as @e[tag=t_mascot,scores={ownedby=-1}] run tag @s add onturn
execute if score tutorial system matches 326 as @e[tag=t_mascot,scores={ownedby=-1}] run scoreboard players set @s hp 0
execute if score tutorial system matches 326 as @e[tag=t_deck,tag=ownedby1] run particle minecraft:large_smoke ~ ~ ~ 0.4 0.4 0.4 0.1 100 force
execute if score tutorial system matches 326 as @e[tag=t_deck,tag=ownedby1] run playsound minecraft:item.trident.thunder block @a[tag=tutorial] ~ ~ ~ 3 1.2 1
execute if score tutorial system matches 326 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"啊我死了...","color":"white","bold":"true"}]
execute if score tutorial system matches 326 run bossbar set tutorial_2 name {"text":"请稍候...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 335 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 4 force
execute if score tutorial system matches 335 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run playsound minecraft:entity.generic.explode block @a[tag=tutorial] ~ ~ ~ 3 1 1
execute if score tutorial system matches 335 as @e[tag=t_mascot,scores={ownedby=-1}] run kill @s
execute if score tutorial system matches 335 as @e[tag=t_mascotdata,scores={ownedby=-1}] run kill @s
execute if score tutorial system matches 335 as @e[tag=t_mascotname,scores={ownedby=-1}] run kill @s
execute if score tutorial system matches 335 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 336 run scoreboard players set t_pause system 1

execute if score tutorial system matches 337 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这些就是《次元召唤》的全部操作了","color":"white","bold":"true"}]
execute if score tutorial system matches 337 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 338 run scoreboard players set t_pause system 1

execute if score tutorial system matches 339 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"这里我无法将所有的情况都展示给你","color":"white","bold":"true"}]
execute if score tutorial system matches 339 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 340 run scoreboard players set t_pause system 1

execute if score tutorial system matches 341 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"只有你去自己探索了","color":"white","bold":"true"}]
execute if score tutorial system matches 341 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 342 run scoreboard players set t_pause system 1

execute if score tutorial system matches 343 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"如果你忘记了什么，我随时在这帮你","color":"white","bold":"true"}]
execute if score tutorial system matches 343 run bossbar set tutorial_2 name {"text":"按[F]键以继续...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 344 run scoreboard players set t_pause system 1

execute if score tutorial system matches 345 run bossbar set tutorial_1 name [{"text":"凯文博士：","color":"yellow","bold":"true"},{"text":"祝你好运","color":"white","bold":"true"}]
execute if score tutorial system matches 370 as @a[tag=tutorial,advancements={daily/finish_tutorial=false}] run advancement grant @s only minecraft:daily/finish_tutorial
execute if score tutorial system matches 370 run spreadplayers -203 30 2 2 under 26 false @a[tag=tutorial]
execute if score tutorial system matches 370 run scoreboard players set t_hold system 599
execute if score tutorial system matches 370 run function lobby:quit_tutorial