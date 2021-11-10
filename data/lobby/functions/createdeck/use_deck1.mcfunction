scoreboard players set @s deck 1
clear @s lime_wool{Tags:["deck1"]}
clear @s white_wool{Tags:["deck1"]}
data modify block -9 14 -1 Items set from entity @s EnderItems.[0].tag.BlockEntityTag.Items
item replace entity @s enderchest.5 from entity @s enderchest.0
#——————————————————————————————————————————————————————————————————————————————————————————————————————
data modify block -9 14 -3 Items.[0].tag.Tags set value ["deck1"]
data modify block -9 14 -3 Items.[0].tag.display.Name set value '[{"text":"<套牌一>","bold":"true"}]'
data modify block -9 14 -3 Items.[0].tag.display.Lore set value ['{"text":" "}','{"text":"-随从-","color":"dark_red"}','{"text":"——","color":"white"}','{"text":" ","color":"white"}','{"text":"-卡牌-","color":"blue"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}']
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_4"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_5"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_6"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_7"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_8"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_9"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_10"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_11"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_12"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_13"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_14"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_15"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_16"]}
data modify entity @e[tag=summon,tag=minion_1,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:6b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_2,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:7b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_3,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:8b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_1,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:9b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_2,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:10b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_3,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:11b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_4,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:12b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_5,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:13b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_6,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:14b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_7,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:15b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_8,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:16b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_9,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:17b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_10,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:18b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_11,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:19b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_12,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:20b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_13,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:21b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_14,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:22b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_15,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:23b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_16,limit=1] CustomName set from entity @s EnderItems.[0].tag.BlockEntityTag.Items.[{Slot:24b}].tag.display.Name
setblock 10 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=minion_1]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_2]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_3]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 11 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_1]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_2]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_3]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_4]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_5]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_6]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_7]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_8]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 12 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_9]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_10]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_11]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_12]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_13]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_14]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_15]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_16]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -3 Items.[0].tag.display.Lore.[2] set from block 10 0 10 Text1
data modify block -9 14 -3 Items.[0].tag.display.Lore.[5] set from block 11 0 10 Text1
data modify block -9 14 -3 Items.[0].tag.display.Lore.[6] set from block 11 0 10 Text2
data modify block -9 14 -3 Items.[0].tag.display.Lore.[7] set from block 11 0 10 Text3
data modify block -9 14 -3 Items.[0].tag.display.Lore.[8] set from block 11 0 10 Text4
data modify block -9 14 -3 Items.[0].tag.display.Lore.[9] set from block 12 0 10 Text1
data modify block -9 14 -3 Items.[0].tag.display.Lore.[10] set from block 12 0 10 Text2
data modify block -9 14 -3 Items.[0].tag.display.Lore.[11] set from block 12 0 10 Text3
data modify block -9 14 -3 Items.[0].tag.display.Lore.[12] set from block 12 0 10 Text4
kill @e[tag=summon]
data modify block -9 14 -3 Items.[1].tag.Tags set value ["deck2"]
data modify block -9 14 -3 Items.[1].tag.display.Name set value '[{"text":"<套牌二>","bold":"true"}]'
data modify block -9 14 -3 Items.[1].tag.display.Lore set value ['{"text":" "}','{"text":"-随从-","color":"dark_red"}','{"text":"——","color":"white"}','{"text":" ","color":"white"}','{"text":"-卡牌-","color":"blue"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}']
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_4"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_5"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_6"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_7"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_8"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_9"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_10"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_11"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_12"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_13"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_14"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_15"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_16"]}
data modify entity @e[tag=summon,tag=minion_1,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:6b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_2,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:7b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_3,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:8b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_1,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:9b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_2,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:10b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_3,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:11b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_4,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:12b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_5,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:13b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_6,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:14b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_7,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:15b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_8,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:16b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_9,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:17b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_10,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:18b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_11,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:19b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_12,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:20b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_13,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:21b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_14,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:22b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_15,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:23b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_16,limit=1] CustomName set from entity @s EnderItems.[1].tag.BlockEntityTag.Items.[{Slot:24b}].tag.display.Name
setblock 10 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=minion_1]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_2]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_3]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 11 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_1]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_2]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_3]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_4]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_5]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_6]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_7]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_8]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 12 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_9]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_10]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_11]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_12]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_13]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_14]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_15]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_16]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -3 Items.[1].tag.display.Lore.[2] set from block 10 0 10 Text1
data modify block -9 14 -3 Items.[1].tag.display.Lore.[5] set from block 11 0 10 Text1
data modify block -9 14 -3 Items.[1].tag.display.Lore.[6] set from block 11 0 10 Text2
data modify block -9 14 -3 Items.[1].tag.display.Lore.[7] set from block 11 0 10 Text3
data modify block -9 14 -3 Items.[1].tag.display.Lore.[8] set from block 11 0 10 Text4
data modify block -9 14 -3 Items.[1].tag.display.Lore.[9] set from block 12 0 10 Text1
data modify block -9 14 -3 Items.[1].tag.display.Lore.[10] set from block 12 0 10 Text2
data modify block -9 14 -3 Items.[1].tag.display.Lore.[11] set from block 12 0 10 Text3
data modify block -9 14 -3 Items.[1].tag.display.Lore.[12] set from block 12 0 10 Text4
kill @e[tag=summon]
data modify block -9 14 -3 Items.[2].tag.Tags set value ["deck3"]
data modify block -9 14 -3 Items.[2].tag.display.Name set value '[{"text":"<套牌三>","bold":"true"}]'
data modify block -9 14 -3 Items.[2].tag.display.Lore set value ['{"text":" "}','{"text":"-随从-","color":"dark_red"}','{"text":"——","color":"white"}','{"text":" ","color":"white"}','{"text":"-卡牌-","color":"blue"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}']
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_4"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_5"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_6"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_7"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_8"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_9"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_10"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_11"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_12"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_13"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_14"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_15"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_16"]}
data modify entity @e[tag=summon,tag=minion_1,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:6b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_2,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:7b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_3,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:8b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_1,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:9b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_2,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:10b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_3,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:11b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_4,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:12b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_5,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:13b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_6,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:14b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_7,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:15b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_8,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:16b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_9,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:17b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_10,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:18b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_11,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:19b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_12,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:20b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_13,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:21b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_14,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:22b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_15,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:23b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_16,limit=1] CustomName set from entity @s EnderItems.[2].tag.BlockEntityTag.Items.[{Slot:24b}].tag.display.Name
setblock 10 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=minion_1]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_2]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_3]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 11 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_1]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_2]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_3]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_4]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_5]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_6]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_7]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_8]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 12 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_9]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_10]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_11]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_12]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_13]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_14]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_15]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_16]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -3 Items.[2].tag.display.Lore.[2] set from block 10 0 10 Text1
data modify block -9 14 -3 Items.[2].tag.display.Lore.[5] set from block 11 0 10 Text1
data modify block -9 14 -3 Items.[2].tag.display.Lore.[6] set from block 11 0 10 Text2
data modify block -9 14 -3 Items.[2].tag.display.Lore.[7] set from block 11 0 10 Text3
data modify block -9 14 -3 Items.[2].tag.display.Lore.[8] set from block 11 0 10 Text4
data modify block -9 14 -3 Items.[2].tag.display.Lore.[9] set from block 12 0 10 Text1
data modify block -9 14 -3 Items.[2].tag.display.Lore.[10] set from block 12 0 10 Text2
data modify block -9 14 -3 Items.[2].tag.display.Lore.[11] set from block 12 0 10 Text3
data modify block -9 14 -3 Items.[2].tag.display.Lore.[12] set from block 12 0 10 Text4
kill @e[tag=summon]
data modify block -9 14 -3 Items.[3].tag.Tags set value ["deck4"]
data modify block -9 14 -3 Items.[3].tag.display.Name set value '[{"text":"<套牌四>","bold":"true"}]'
data modify block -9 14 -3 Items.[3].tag.display.Lore set value ['{"text":" "}','{"text":"-随从-","color":"dark_red"}','{"text":"——","color":"white"}','{"text":" ","color":"white"}','{"text":"-卡牌-","color":"blue"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}']
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_4"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_5"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_6"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_7"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_8"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_9"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_10"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_11"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_12"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_13"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_14"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_15"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_16"]}
data modify entity @e[tag=summon,tag=minion_1,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:6b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_2,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:7b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_3,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:8b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_1,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:9b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_2,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:10b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_3,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:11b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_4,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:12b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_5,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:13b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_6,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:14b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_7,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:15b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_8,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:16b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_9,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:17b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_10,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:18b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_11,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:19b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_12,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:20b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_13,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:21b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_14,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:22b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_15,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:23b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_16,limit=1] CustomName set from entity @s EnderItems.[3].tag.BlockEntityTag.Items.[{Slot:24b}].tag.display.Name
setblock 10 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=minion_1]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_2]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_3]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 11 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_1]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_2]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_3]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_4]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_5]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_6]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_7]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_8]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 12 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_9]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_10]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_11]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_12]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_13]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_14]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_15]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_16]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -3 Items.[3].tag.display.Lore.[2] set from block 10 0 10 Text1
data modify block -9 14 -3 Items.[3].tag.display.Lore.[5] set from block 11 0 10 Text1
data modify block -9 14 -3 Items.[3].tag.display.Lore.[6] set from block 11 0 10 Text2
data modify block -9 14 -3 Items.[3].tag.display.Lore.[7] set from block 11 0 10 Text3
data modify block -9 14 -3 Items.[3].tag.display.Lore.[8] set from block 11 0 10 Text4
data modify block -9 14 -3 Items.[3].tag.display.Lore.[9] set from block 12 0 10 Text1
data modify block -9 14 -3 Items.[3].tag.display.Lore.[10] set from block 12 0 10 Text2
data modify block -9 14 -3 Items.[3].tag.display.Lore.[11] set from block 12 0 10 Text3
data modify block -9 14 -3 Items.[3].tag.display.Lore.[12] set from block 12 0 10 Text4
kill @e[tag=summon]
data modify block -9 14 -3 Items.[4].tag.Tags set value ["deck5"]
data modify block -9 14 -3 Items.[4].tag.display.Name set value '[{"text":"<套牌五>","bold":"true"}]'
data modify block -9 14 -3 Items.[4].tag.display.Lore set value ['{"text":" "}','{"text":"-随从-","color":"dark_red"}','{"text":"——","color":"white"}','{"text":" ","color":"white"}','{"text":"-卡牌-","color":"blue"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}','{"text":"——","color":"white"}']
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"yellow\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","minion_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_1"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_2"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_3"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_4"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_5"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_6"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_7"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_8"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_9"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_10"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_11"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_12"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_13"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_14"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_15"]}
summon marker ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","card_16"]}
data modify entity @e[tag=summon,tag=minion_1,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:6b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_2,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:7b}].tag.display.Name
data modify entity @e[tag=summon,tag=minion_3,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:8b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_1,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:9b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_2,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:10b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_3,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:11b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_4,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:12b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_5,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:13b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_6,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:14b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_7,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:15b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_8,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:16b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_9,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:17b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_10,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:18b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_11,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:19b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_12,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:20b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_13,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:21b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_14,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:22b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_15,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:23b}].tag.display.Name
data modify entity @e[tag=summon,tag=card_16,limit=1] CustomName set from entity @s EnderItems.[4].tag.BlockEntityTag.Items.[{Slot:24b}].tag.display.Name
setblock 10 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=minion_1]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_2]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=minion_3]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 11 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_1]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_2]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_3]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_4]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_5]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_6]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_7]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_8]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
setblock 12 0 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=summon,tag=card_9]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_10]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@e[tag=summon,tag=card_11]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_12]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"selector\":\"@e[tag=summon,tag=card_13]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_14]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"selector\":\"@e[tag=summon,tag=card_15]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  \"},{\"selector\":\"@e[tag=summon,tag=card_16]\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -3 Items.[4].tag.display.Lore.[2] set from block 10 0 10 Text1
data modify block -9 14 -3 Items.[4].tag.display.Lore.[5] set from block 11 0 10 Text1
data modify block -9 14 -3 Items.[4].tag.display.Lore.[6] set from block 11 0 10 Text2
data modify block -9 14 -3 Items.[4].tag.display.Lore.[7] set from block 11 0 10 Text3
data modify block -9 14 -3 Items.[4].tag.display.Lore.[8] set from block 11 0 10 Text4
data modify block -9 14 -3 Items.[4].tag.display.Lore.[9] set from block 12 0 10 Text1
data modify block -9 14 -3 Items.[4].tag.display.Lore.[10] set from block 12 0 10 Text2
data modify block -9 14 -3 Items.[4].tag.display.Lore.[11] set from block 12 0 10 Text3
data modify block -9 14 -3 Items.[4].tag.display.Lore.[12] set from block 12 0 10 Text4
kill @e[tag=summon]
#——————————————————————————————————————————————————————————————————————————————————————————————————————












data modify block -9 14 -3 Items.[1].id set value "minecraft:white_wool"
data modify block -9 14 -3 Items.[2].id set value "minecraft:white_wool"
data modify block -9 14 -3 Items.[3].id set value "minecraft:white_wool"
data modify block -9 14 -3 Items.[4].id set value "minecraft:white_wool"
data modify block -9 14 -3 Items.[0].id set value "minecraft:lime_wool"
item replace entity @s container.11 from block -9 14 -3 container.0
item replace entity @s container.12 from block -9 14 -3 container.1
item replace entity @s container.13 from block -9 14 -3 container.2
item replace entity @s container.14 from block -9 14 -3 container.3
item replace entity @s container.15 from block -9 14 -3 container.4



