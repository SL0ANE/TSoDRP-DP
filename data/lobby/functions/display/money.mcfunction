tag @s add 123
clear @s gold_ingot
setblock -9 14 -7 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:gold_ingot",Count:1b,tag:{Tags:["money"],CustomModelData:1,display:{Lore:['{"text":"丢弃扔出10金币","color":"white","italic":"false"}','{"text":"Ctrl+丢弃扔出100金币","color":"white","italic":"false"}','{"text":" ","color":"white"}','{"text":"文本4"}'],Name:'[{"text":"文本","color":"gold","italic":"false"}]'}}}]} destroy
setblock -9 15 -7 minecraft:oak_sign{Text1:"[{\"text\":\"余额：\",\"color\":\"#98FB98\",\"bold\":\"true\"},{\"score\":{\"objective\":\"money\",\"name\":\"@a[tag=123]\"},\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"金币：\",\"color\":\"gold\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"(余额：\",\"color\":\"#98FB98\",\"bold\":\"true\"},{\"score\":{\"objective\":\"money\",\"name\":\"@a[tag=123]\"},\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\")\",\"color\":\"#98FB98\",\"bold\":\"true\"}]"} destroy
data modify block -9 14 -7 Items.[0].tag.display.Lore[3] set from block -9 15 -7 Text1
data modify block -9 14 -7 Items.[0].tag.display.Name set from block -9 15 -7 Text2

item replace entity @s hotbar.2 from block -9 14 -7 container.0
item replace entity @s hotbar.5 from block -9 14 -7 container.0
item replace entity @s hotbar.8 from block -9 14 -7 container.0
tag @s remove 123