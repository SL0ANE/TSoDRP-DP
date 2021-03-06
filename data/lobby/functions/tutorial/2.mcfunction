
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
execute if score tutorial system matches 1 run bossbar add tutorial_p {"text":"???"}

execute if score tutorial system matches 2 as @a[tag=tutorial] run playsound minecraft:ui.loom.select_pattern block @s ~ ~ ~ 3 0.1 1
execute if score tutorial system matches 2 run summon minecraft:armor_stand -203 18.5 79 {ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:104}}],ShowArms:1,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,Invulnerable:1b,DisabledSlots:2039583,Tags:["lobby","tutorial","t_player","display"]}
execute if score tutorial system matches 2 run scoreboard players set @e[tag=t_player] playernumber -1
execute if score tutorial system matches 2 run bossbar set tutorial_1 name {"text":"??????????????????????????????-????????????","color":"white","bold":"true"}
execute if score tutorial system matches 2 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 3 run scoreboard players set t_pause system 1

execute if score tutorial system matches 4 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????V21.8.25?????????","color":"white","bold":"true"}]
execute if score tutorial system matches 5 run scoreboard players set t_pause system 1


execute if score tutorial system matches 6 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 7 run scoreboard players set t_pause system 1


execute if score tutorial system matches 8 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????...","color":"white","bold":"true"}]
execute if score tutorial system matches 8 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}

execute if score tutorial system matches 19 as @e[tag=tutorial] at @s run playsound minecraft:ui.cartography_table.take_result block @s ~ ~ ~ 3 2 1
execute if score tutorial system matches 19 run summon minecraft:armor_stand -200.5 18 75.5 {CustomName:"[{\"text\":\"????????????\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","lansiluote"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:24030}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -202.5 18 75.5 {CustomName:"[{\"text\":\"????????????\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","asimode"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:54070}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -204.5 18 75.5 {CustomName:"[{\"text\":\"????????????\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","maidezhanshi"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:44050}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -204.5 18 77.5 {CustomName:"[{\"text\":\"??????A\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","zabing1"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:4010}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -202.5 18 77.5 {CustomName:"[{\"text\":\"?????????\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","beifuka"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:4020}}]}
execute if score tutorial system matches 19 run summon minecraft:armor_stand -200.5 18 77.5 {CustomName:"[{\"text\":\"??????B\",\"color\":\"#FFFFFF\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_minion","zabing2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:4010}}]}
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
execute if score tutorial system matches 25 run summon minecraft:armor_stand -207 19 73 {CustomName:"[{\"text\":\"???\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:1}}],ShowArms:1,Rotation:[-50f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,Invulnerable:1b,DisabledSlots:2039583,Tags:["lobby","tutorial","button2","t_mascot","ownedby2","display"]}
execute if score tutorial system matches 25 run summon minecraft:armor_stand -199 19 79 {CustomName:"[{\"text\":\"????????????\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:2}}],ShowArms:1,Rotation:[130f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,Invulnerable:1b,DisabledSlots:2039583,Tags:["lobby","tutorial","button2","t_mascot","ownedby1","display"]}
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] hp 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] hp 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] hplimit 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] hplimit 30
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] mana 0
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] mana 0
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby1,tag=t_mascot] manalimit 0
execute if score tutorial system matches 25 run scoreboard players set @e[tag=ownedby2,tag=t_mascot] manalimit 0
execute if score tutorial system matches 30 as @e[tag=tutorial] at @s run playsound minecraft:ui.cartography_table.take_result block @s ~ ~ ~ 3 2 1
execute if score tutorial system matches 30 run summon minecraft:armor_stand -203 22.45 76 {CustomName:"[{\"text\":\"????????????\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["lobby","tutorial","button2","t_endround"],Invisible:1,DisabledSlots:1039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -207 19.65 76 {Tags:["tutorial","button2","t_deck","ownedby1"],Invisible:1,DisabledSlots:1039583,Rotation:[-40f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:101}}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -199 19.65 76 {Tags:["tutorial","button2","t_deck","ownedby2"],Invisible:1,DisabledSlots:1039583,Rotation:[140f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:101}}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -207 20.65 79 {Tags:["tutorial","button2","t_dcpile","ownedby1"],Invisible:1,DisabledSlots:1039583,Rotation:[-90f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:102}}]}
execute if score tutorial system matches 30 run summon minecraft:armor_stand -199 20.65 73 {Tags:["tutorial","button2","t_dcpile","ownedby2"],Invisible:1,DisabledSlots:1039583,Rotation:[90f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{CustomModelData:102}}]}
execute if score tutorial system matches 30 run scoreboard players set @e[tag=tutorial,tag=ownedby1] ownedby -1
execute if score tutorial system matches 30 run scoreboard players set @e[tag=tutorial,tag=ownedby2] ownedby -2
execute if score tutorial system matches 30 as @e[tag=t_mascot] run function lobby:tutorial/4

execute if score tutorial system matches 30 run function lobby:tutorial/5
execute if score tutorial system matches 30 as @e[tag=t_deck] at @s run function lobby:tutorial/setdeck

execute if score tutorial system matches 40 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 40 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 41 run scoreboard players set t_pause system 1

execute if score tutorial system matches 42 run effect give @e[tag=t_deck,tag=ownedby2] glowing 1000000 0 true
execute if score tutorial system matches 42 as @a[tag=tutorial] at @s facing entity @e[tag=t_deck,tag=ownedby2] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 42 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 42 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 43 run scoreboard players set t_pause system 1

execute if score tutorial system matches 44 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"},{"text":"????????????16??????","color":"white","bold":"true","underlined":"true"},{"text":"??????","color":"white","bold":"true"}]
execute if score tutorial system matches 44 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 45 run scoreboard players set t_pause system 1

execute if score tutorial system matches 46 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 46 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 47 run scoreboard players set t_pause system 1

execute if score tutorial system matches 48 run effect clear @e[tag=t_deck,tag=ownedby2] glowing
execute if score tutorial system matches 48 run effect give @e[tag=t_deck,tag=ownedby1] glowing 1000000 0 true
execute if score tutorial system matches 48 as @a[tag=tutorial] at @s facing entity @e[tag=t_deck,tag=ownedby1] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 48 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 48 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 49 run scoreboard players set t_pause system 1

execute if score tutorial system matches 50 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 50 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 51 run scoreboard players set t_pause system 1

execute if score tutorial system matches 52 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 52 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 53 run scoreboard players set t_pause system 1

execute if score tutorial system matches 54 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 54 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 55 run scoreboard players set t_pause system 1

execute if score tutorial system matches 56.. as @a[tag=tutorial_hold] run function lobby:tutorial/select
execute if score tutorial system matches 56.. as @e[tag=t_player,tag=tutorial,type=!player] run function lobby:tutorial/select
execute if score tutorial system matches 56 as @e[tag=t_player,tag=tutorial,type=!player] run scoreboard players set @s hoverhotbar 2
execute if score tutorial system matches 56 run effect clear @e[tag=t_deck,tag=ownedby1] glowing
execute if score tutorial system matches 56 run bossbar set tutorial_1 name [{"text":""}]
execute if score tutorial system matches 56 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 56 as @e[tag=t_mascot] run function lobby:tutorial/draw
execute if score tutorial system matches 56 as @e[tag=t_mascot] run function lobby:tutorial/draw
execute if score tutorial system matches 56 as @e[tag=t_mascot] run function lobby:tutorial/draw
execute if score tutorial system matches 66 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 67 run scoreboard players set t_pause system 1

execute if score tutorial system matches 68 as @a[tag=tutorial] at @s facing entity @e[tag=t_card,scores={ownedby=-2,handorder=2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 68 run effect give @e[tag=t_card,scores={ownedby=-2,handorder=1..3}] glowing 1000000 0 true
execute if score tutorial system matches 68 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 68 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 69 run scoreboard players set t_pause system 1

execute if score tutorial system matches 70 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"???7","color":"white","bold":"true"}]
execute if score tutorial system matches 70 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 71 run scoreboard players set t_pause system 1

execute if score tutorial system matches 72 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????8??????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 72 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 73 run scoreboard players set t_pause system 1

execute if score tutorial system matches 74 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,scores={ownedby=-2,minionboard=2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 74 run effect clear @e[tag=t_card] glowing
execute if score tutorial system matches 74 run effect give @e[tag=t_minion] glowing 1000000 0 true
execute if score tutorial system matches 74 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 74 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 75 run scoreboard players set t_pause system 1

execute if score tutorial system matches 76 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,scores={ownedby=-1,minionboard=2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 76 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 76 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 77 run scoreboard players set t_pause system 1

execute if score tutorial system matches 78 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"??????","color":"white","bold":"true"}]
execute if score tutorial system matches 78 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 79 run scoreboard players set t_pause system 1

execute if score tutorial system matches 80 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"??????","color":"white","bold":"true"}]
execute if score tutorial system matches 80 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 81 run scoreboard players set t_pause system 1

execute if score tutorial system matches 82 as @a[tag=tutorial] at @s facing entity @e[tag=t_mascot,scores={ownedby=-2}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 82 run effect clear @e[tag=t_minion] glowing
execute if score tutorial system matches 82 run effect give @e[tag=t_mascot,scores={ownedby=-2}] glowing 1000000 0 true
execute if score tutorial system matches 82 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 82 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 83 run scoreboard players set t_pause system 1

execute if score tutorial system matches 84 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 84 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 85 run scoreboard players set t_pause system 1

execute if score tutorial system matches 86 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 86 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 87 run scoreboard players set t_pause system 1

execute if score tutorial system matches 88 as @a[tag=tutorial] at @s facing entity @e[tag=t_mascot,scores={ownedby=-1}] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 88 run effect clear @e[tag=t_mascot] glowing
execute if score tutorial system matches 88 run effect give @e[tag=t_mascot,scores={ownedby=-1}] glowing 1000000 0 true
execute if score tutorial system matches 88 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 88 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 89 run scoreboard players set t_pause system 1

execute if score tutorial system matches 90 run effect clear @e[tag=t_mascot] glowing
execute if score tutorial system matches 90 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"??????30?????????????????????0??????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 90 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 91 run scoreboard players set t_pause system 1

execute if score tutorial system matches 92 run title @a[tag=tutorial] title [{"text":"???","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"????????????","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"???","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score tutorial system matches 92 as @a[tag=tutorial] run title @s times 10 20 10
execute if score tutorial system matches 92 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 92 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s manalimit 1
execute if score tutorial system matches 92 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 1
execute if score tutorial system matches 92 run scoreboard players set t_system round 1
execute if score tutorial system matches 92 as @e[tag=t_mascot,tag=ownedby2] run tag @s add onturn
execute if score tutorial system matches 92 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 92 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 93 run scoreboard players set t_pause system 1

execute if score tutorial system matches 94 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 94 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 95 run scoreboard players set t_pause system 1

execute if score tutorial system matches 96 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"??????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 96 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 97 run scoreboard players set t_pause system 1

execute if score tutorial system matches 98 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 98 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 99 run scoreboard players set t_pause system 1

execute if score tutorial system matches 100 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 100 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 101 run scoreboard players set t_pause system 1

execute if score tutorial system matches 102 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 102 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 103 run scoreboard players set t_pause system 1

execute if score tutorial system matches 104 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run scoreboard players set t_pause2 system 1
execute if score tutorial system matches 105 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run scoreboard players set t_pause system 1


execute if score tutorial system matches 1.. as @a[tag=tutorial_hold,scores={rightclick=1..,hoverhotbar=0}] at @s run function lobby:tutorial/attacktestonturn
execute if score tutorial system matches 1.. as @a[tag=tutorial_hold,scores={rightclick=1..,sneak=0,hoverhotbar=1..7}] at @s run function lobby:tutorial/usecard1
execute if score tutorial system matches 1.. as @a[tag=tutorial_hold,scores={rightclick=1..,sneak=0,hoverhotbar=8}] at @s run function lobby:tutorial/datacheck
execute if score tutorial system matches 106 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=lansiluote] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 106 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 106 run tag @e remove t_pass
execute if score tutorial system matches 106 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 107 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 107 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 107 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1


execute if score tutorial system matches 108 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 108 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 108 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 108 run tag @e remove t_pass
execute if score tutorial system matches 108 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-2}] mana 0
execute if score tutorial system matches 108 as @e[tag=lansiluote] at @s run function lobby:tutorial/event/enter

execute if score tutorial system matches 119 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 120 run scoreboard players set t_pause system 1

execute if score tutorial system matches 121 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 121 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 122 run scoreboard players set t_pause system 1

execute if score tutorial system matches 123 as @a[tag=tutorial] at @s facing entity @e[tag=t_endround] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 123 run tag @e remove t_pass
execute if score tutorial system matches 123 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"??????","color":"white","bold":"true"}]
execute if score tutorial system matches 124 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 124 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 124 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=t_endround] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 125 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 125 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 125 run tag @e remove t_pass
execute if score tutorial system matches 125 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 125 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-1}] mana 2
execute if score tutorial system matches 125 as @e[tag=t_mascot,scores={ownedby=-1}] run scoreboard players set @s manalimit 1
execute if score tutorial system matches 125 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 125 as @e[tag=t_mascot,scores={ownedby=-1}] run tag @s add onturn
execute if score tutorial system matches 125 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run function lobby:tutorial/drawcard

execute if score tutorial system matches 140 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 141 run scoreboard players set t_pause system 1

execute if score tutorial system matches 142 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"??????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 142 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 143 run scoreboard players set t_pause system 1

execute if score tutorial system matches 144 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????2???","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 144 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 155 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 155 as @e[tag=t_mascot,tag=ownedby1] run scoreboard players set @s mana 1
execute if score tutorial system matches 166 as @e[tag=t_minion,tag=zabing2] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 166 as @e[tag=t_mascot,tag=ownedby1] run scoreboard players set @s mana 0
execute if score tutorial system matches 166 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 167 run scoreboard players set t_pause system 1

execute if score tutorial system matches 168 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????","color":"white","bold":"true"}]
execute if score tutorial system matches 168 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 168 run title @a[tag=tutorial] title [{"text":"???","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"????????????","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"???","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
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
execute if score tutorial system matches 171 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"?????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 171 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 171 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 171 run effect give @e[tag=t_minion,tag=asimode] glowing 1000000 0 true
execute if score tutorial system matches 171 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=asimode] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 172 run tag @e remove t_pass
execute if score tutorial system matches 172 run effect clear @e[tag=t_minion,tag=asimode] glowing
execute if score tutorial system matches 172 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 172 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 172 as @e[tag=t_minion,tag=asimode] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 172 as @e[tag=t_minion,tag=asimode] run tag @s add addpuzzle
execute if score tutorial system matches 172 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 1
execute if score tutorial system matches 173 run scoreboard players set t_pause system 1

execute if score tutorial system matches 174 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????1???","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"??????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 174 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 175 run scoreboard players set t_pause system 1

execute if score tutorial system matches 176 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 176 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 177 run scoreboard players set t_pause system 1

execute if score tutorial system matches 178 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 178 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 179 run scoreboard players set t_pause system 1

execute if score tutorial system matches 180 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 180 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=lansiluote] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 180 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 180 run tag @e remove t_pass
execute if score tutorial system matches 181 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 181 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 181 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 182 run tag @e remove t_pass
execute if score tutorial system matches 182 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion
execute if score tutorial system matches 182 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 182 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 182 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 182 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 0
execute if score tutorial system matches 182 run effect give @e[tag=t_minion,tag=zabing2] glowing 1000000 0 true
execute if score tutorial system matches 183 run scoreboard players set t_pause system 1

execute if score tutorial system matches 184..186 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion2
execute if score tutorial system matches 187 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 187 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 188 run scoreboard players set t_pause system 1

execute if score tutorial system matches 189 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????","color":"white","bold":"true"},{"text":"?????????","color":"white","bold":"true","underlined":"true"},{"text":"?????????","color":"white","bold":"true"}]
execute if score tutorial system matches 189 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 190 run scoreboard players set t_pause system 1

execute if score tutorial system matches 191 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????","color":"white","bold":"true"},{"text":"?????????","color":"white","bold":"true","underlined":"true"},{"text":"?????????","color":"white","bold":"true"}]
execute if score tutorial system matches 191 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 192 run scoreboard players set t_pause system 1

execute if score tutorial system matches 193 run bossbar set tutorial_1 name [{"text":""}]
execute if score tutorial system matches 193 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 193 as @e[tag=t_minion,tag=lansiluote] at @s run scoreboard players set @s dmgtaken 3
execute if score tutorial system matches 193 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 194 as @e[tag=t_minion,tag=zabing2] at @s run scoreboard players set @s dmgtaken 6
execute if score tutorial system matches 194 as @e[tag=t_minion,tag=zabing2] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 195..197 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion3
execute if score tutorial system matches 198 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion4
execute if score tutorial system matches 198 run effect clear @e[tag=t_minion,tag=zabing2] glowing
execute if score tutorial system matches 198 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 198 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 199 run scoreboard players set t_pause system 1

execute if score tutorial system matches 200 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????1???","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 200 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 200 as @e[tag=t_minion,tag=lansiluote] at @s run particle minecraft:dust 0 1 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score tutorial system matches 200 as @e[tag=t_minion,tag=lansiluote] at @s run playsound minecraft:entity.illusioner.cast_spell block @a[tag=tutorial] ~ ~ ~ 3 2 1
execute if score tutorial system matches 200 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 1
execute if score tutorial system matches 201 run scoreboard players set t_pause system 1

execute if score tutorial system matches 202 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 202 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 203 run scoreboard players set t_pause system 1

execute if score tutorial system matches 204 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 204 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 205 run scoreboard players set t_pause system 1

execute if score tutorial system matches 206 run effect give @e[tag=t_minion,tag=zabing2] glowing 1000000 0 true
execute if score tutorial system matches 206 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 207 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 1 run bossbar set tutorial_2 name {"text":"?????????????????????...","color":"white","bold":"false"}
execute if score tutorial system matches 207 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 1 run bossbar set tutorial_2 name {"text":"??????????????????[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 207 as @a[tag=tutorial_hold] run scoreboard players set t_pause3 system 1

execute if score tutorial system matches 208 as @e[tag=t_card,scores={cardid=1020,ownedby=-2}] at @s run function lobby:tutorial/discard
execute if score tutorial system matches 208 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 0
execute if score tutorial system matches 208 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"???????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 208 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 218 as @e[tag=t_minion,tag=zabing2] at @s run scoreboard players set @s dmgtaken 5
execute if score tutorial system matches 218 as @e[tag=t_minion,tag=zabing2] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 218 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 219 as @a[tag=tutorial_hold] run scoreboard players set t_pause system 1

execute if score tutorial system matches 220 as @e[tag=zabing2,tag=t_minion] at @s run function lobby:tutorial/miniondie
execute if score tutorial system matches 220 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????3??????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"3?????????","color":"white","bold":"true"}]
execute if score tutorial system matches 220 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 221 as @a[tag=tutorial_hold] run scoreboard players set t_pause system 1

execute if score tutorial system matches 222 run tag @e remove t_pass
execute if score tutorial system matches 222 run effect clear @e[tag=t_minion,tag=zabing2] glowing
execute if score tutorial system matches 222 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"??????","color":"white","bold":"true"}]
execute if score tutorial system matches 223 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 223 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
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
execute if score tutorial system matches 224 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 224 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 225 as @a[tag=tutorial_hold] run scoreboard players set t_pause system 1

execute if score tutorial system matches 226 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 226 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 227 run scoreboard players set t_pause system 1

execute if score tutorial system matches 228 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-1}] mana 1
execute if score tutorial system matches 228 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion
execute if score tutorial system matches 228 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 228 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 229 run scoreboard players set t_pause system 1

execute if score tutorial system matches 230 run bossbar set tutorial_1 name [{"text":""}]
execute if score tutorial system matches 230 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 230..232 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion2
execute if score tutorial system matches 233 as @e[tag=t_minion,tag=zabing1] at @s run scoreboard players set @s dmgtaken 6
execute if score tutorial system matches 233 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 234 as @e[tag=t_minion,tag=asimode] at @s run scoreboard players set @s dmgtaken 3
execute if score tutorial system matches 234 as @e[tag=t_minion,tag=asimode] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 235..237 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion3
execute if score tutorial system matches 238 as @e[tag=t_minion,tag=zabing1] at @s run function lobby:tutorial/attackmotion4
execute if score tutorial system matches 238 run effect clear @e[tag=t_minion,tag=asimode] glowing
execute if score tutorial system matches 248 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 248 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 249 run scoreboard players set t_pause system 1

execute if score tutorial system matches 250 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 250 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 251 run scoreboard players set t_pause system 1

execute if score tutorial system matches 252 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 252 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 253 run scoreboard players set t_pause system 1

execute if score tutorial system matches 254 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"?????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 254 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 260 as @e[tag=t_minion,tag=beifuka] at @s run function lobby:tutorial/event/enter
execute if score tutorial system matches 260 as @e[tag=t_mascot,tag=ownedby1] run scoreboard players set @s mana 0
execute if score tutorial system matches 269 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 270 run scoreboard players set t_pause system 1

execute if score tutorial system matches 271 as @e[tag=t_minion,tag=beifuka] at @s run particle minecraft:dust_color_transition 0 0 0 2 1 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score tutorial system matches 271 as @e[tag=t_minion,tag=beifuka] at @s run playsound minecraft:entity.illusioner.cast_spell block @a[tag=tutorial] ~ ~ ~ 3 2 1
execute if score tutorial system matches 271 as @e[tag=t_minion,scores={recover=-1},tag=!beifuka] run function lobby:tutorial/mute
execute if score tutorial system matches 271 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"???????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 271 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 272 run scoreboard players set t_pause system 1

execute if score tutorial system matches 271 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"????????????????????????...","color":"white","bold":"true"}]
execute if score tutorial system matches 271 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 272 run scoreboard players set t_pause system 1

execute if score tutorial system matches 273 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 273 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 274 run scoreboard players set t_pause system 1

execute if score tutorial system matches 275 run title @a[tag=tutorial] title [{"text":"???","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"????????????","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"???","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score tutorial system matches 275 as @a[tag=tutorial] run title @s times 10 20 10
execute if score tutorial system matches 275 as @a[tag=tutorial] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 3 1 1
execute if score tutorial system matches 275 run scoreboard players set t_system round 3
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s manalimit 3
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=ownedby2] run scoreboard players set @s mana 3
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=onturn] run tag @s remove onturn
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=ownedby2] run tag @s add onturn
execute if score tutorial system matches 275 as @e[tag=t_mascot,tag=onturn] at @s run function lobby:tutorial/drawcard
execute if score tutorial system matches 275 as @e[tag=t_deck,tag=ownedby2] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 103
execute if score tutorial system matches 275 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 275 as @a[tag=tutorial] at @s facing entity @e[tag=t_minion,tag=lansiluote] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 275 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 275 run tag @e remove t_pass
execute if score tutorial system matches 276 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 276 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 276 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 277 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 277 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-2}] mana 2
execute if score tutorial system matches 278 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion
execute if score tutorial system matches 279..284 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion2
execute if score tutorial system matches 285 as @e[tag=t_mascot,tag=ownedby1] at @s run scoreboard players set @s dmgtaken 6
execute if score tutorial system matches 285 as @e[tag=t_mascot,tag=ownedby1] at @s run function lobby:tutorial/takedamage
execute if score tutorial system matches 286..291 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion3
execute if score tutorial system matches 292 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/attackmotion4
execute if score tutorial system matches 293 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"???????????????...","color":"white","bold":"true"}]
execute if score tutorial system matches 293 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 294 run scoreboard players set t_pause system 1

execute if score tutorial system matches 295 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 295 run tag @e remove t_pass
execute if score tutorial system matches 295 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 295 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 296 run scoreboard players set t_pause system 1

execute if score tutorial system matches 297 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"???????????????0????????????...","color":"white","bold":"true"}]
execute if score tutorial system matches 297 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 298 run scoreboard players set t_pause system 1

execute if score tutorial system matches 299 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 299 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 300 run scoreboard players set t_pause system 1

execute if score tutorial system matches 301 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"???","color":"white","bold":"true"}]
execute if score tutorial system matches 301 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 302 run scoreboard players set t_pause system 1

execute if score tutorial system matches 303 run effect give @e[tag=t_minion,tag=lansiluote] glowing 1000000 0 true
execute if score tutorial system matches 303 run tag @e remove t_pass
execute if score tutorial system matches 304 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"???????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 unless score @s sneak matches 1 run bossbar set tutorial_2 name {"text":"?????????[??????]...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 if score @s sneak matches 1 run bossbar set tutorial_2 name {"text":"???[??????]?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 304 as @a[tag=tutorial_hold] unless entity @e[tag=t_pass,tag=lansiluote] run scoreboard players set t_pause2 system 1

execute if score tutorial system matches 305 run effect clear @e[tag=t_minion,tag=lansiluote] glowing
execute if score tutorial system matches 305 run tag @e remove t_pass
execute if score tutorial system matches 305 as @e[tag=t_minion,tag=lansiluote] at @s run function lobby:tutorial/switch
execute if score tutorial system matches 305 run scoreboard players set @e[tag=t_mascot,scores={ownedby=-2}] mana 1
execute if score tutorial system matches 305 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 305 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 306 run scoreboard players set t_pause system 1

execute if score tutorial system matches 305 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"??????????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 305 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 306 run scoreboard players set t_pause system 1

execute if score tutorial system matches 307 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"/","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"/","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"},{"text":"/","color":"white","bold":"true"},{"text":"????????????","color":"white","bold":"true","underlined":"true"},{"text":"??????","color":"white","bold":"true"}]
execute if score tutorial system matches 307 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 308 run scoreboard players set t_pause system 1

execute if score tutorial system matches 309 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 309 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 310 run scoreboard players set t_pause system 1

execute if score tutorial system matches 311 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????1???","color":"white","bold":"true"},{"text":"??????","color":"white","bold":"true","underlined":"true"}]
execute if score tutorial system matches 311 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 312 run scoreboard players set t_pause system 1

execute if score tutorial system matches 313 run effect give @e[tag=t_deck,tag=ownedby1] glowing 1000000 0 true
execute if score tutorial system matches 313 as @a[tag=tutorial] at @s facing entity @e[tag=t_deck,tag=ownedby1] feet run tp @s ~ ~ ~ ~ 0
execute if score tutorial system matches 313 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 313 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 314 run scoreboard players set t_pause system 1

execute if score tutorial system matches 315 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"??????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 315 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 316 run scoreboard players set t_pause system 1

execute if score tutorial system matches 317 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 317 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 318 run scoreboard players set t_pause system 1

execute if score tutorial system matches 319 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 319 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 320 run scoreboard players set t_pause system 1

execute if score tutorial system matches 321 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"?????????????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 321 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 322 run scoreboard players set t_pause system 1

execute if score tutorial system matches 323 run tag @e remove t_pass
execute if score tutorial system matches 324 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 324 as @a[tag=tutorial_hold] unless score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"???????????????????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 324 as @a[tag=tutorial_hold] if score @s hoverhotbar matches 0 run bossbar set tutorial_2 name {"text":"?????????????????????...","color":"#EEEED1","bold":"false"}
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
execute if score tutorial system matches 326 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????...","color":"white","bold":"true"}]
execute if score tutorial system matches 326 run bossbar set tutorial_2 name {"text":"?????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 335 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 4 force
execute if score tutorial system matches 335 as @e[tag=t_mascot,scores={ownedby=-1}] at @s run playsound minecraft:entity.generic.explode block @a[tag=tutorial] ~ ~ ~ 3 1 1
execute if score tutorial system matches 335 as @e[tag=t_mascot,scores={ownedby=-1}] run kill @s
execute if score tutorial system matches 335 as @e[tag=t_mascotdata,scores={ownedby=-1}] run kill @s
execute if score tutorial system matches 335 as @e[tag=t_mascotname,scores={ownedby=-1}] run kill @s
execute if score tutorial system matches 335 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 336 run scoreboard players set t_pause system 1

execute if score tutorial system matches 337 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 337 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 338 run scoreboard players set t_pause system 1

execute if score tutorial system matches 339 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 339 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 340 run scoreboard players set t_pause system 1

execute if score tutorial system matches 341 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"???????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 341 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 342 run scoreboard players set t_pause system 1

execute if score tutorial system matches 343 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????????????????????????????????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 343 run bossbar set tutorial_2 name {"text":"???[F]????????????...","color":"#EEEED1","bold":"false"}
execute if score tutorial system matches 344 run scoreboard players set t_pause system 1

execute if score tutorial system matches 345 run bossbar set tutorial_1 name [{"text":"???????????????","color":"yellow","bold":"true"},{"text":"????????????","color":"white","bold":"true"}]
execute if score tutorial system matches 370 as @a[tag=tutorial,advancements={daily/finish_tutorial=false}] run advancement grant @s only minecraft:daily/finish_tutorial
execute if score tutorial system matches 370 run spreadplayers -203 30 2 2 under 26 false @a[tag=tutorial]
execute if score tutorial system matches 370 run scoreboard players set t_hold system 599
execute if score tutorial system matches 370 run function lobby:quit_tutorial