execute if score @s changetime matches 0 run tag @s add pass
execute if score @s changetime matches 1 if score @s money matches 10.. run tag @s add pass
execute if score @s changetime matches 2 if score @s money matches 20.. run tag @s add pass
execute if score @s changetime matches 3 if score @s money matches 30.. run tag @s add pass
execute if score @s changetime matches 4 if score @s money matches 40.. run tag @s add pass
execute as @e[tag=card,scores={handorder=1..}] if score @s ownedby = @a[tag=pass,limit=1] playernumber run function ingame:insertdeck
execute if score @s[tag=pass] playernumber matches 2 as @e[tag=mascot,tag=ownedby2] run function ingame:pregamedraw
execute if score @s[tag=pass] playernumber matches 2 as @e[tag=mascot,tag=ownedby2] run function ingame:pregamedraw
execute if score @s[tag=pass] playernumber matches 2 as @e[tag=mascot,tag=ownedby2] run function ingame:pregamedraw
execute if score @s[tag=pass] playernumber matches 1 as @e[tag=mascot,tag=ownedby1] run function ingame:pregamedraw
execute if score @s[tag=pass] playernumber matches 1 as @e[tag=mascot,tag=ownedby1] run function ingame:pregamedraw
execute if score @s[tag=pass] playernumber matches 1 as @e[tag=mascot,tag=ownedby1] run function ingame:pregamedraw
scoreboard players add @s[tag=pass] changetime 1

execute if score @s[tag=pass] changetime matches 1 run scoreboard players remove @s money 0
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 1 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费10金币更换起始手牌\",\"color\":\"#BBFFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余4次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1

execute if score @s[tag=pass] changetime matches 2 run scoreboard players remove @s money 10
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 2 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费20金币更换起始手牌\",\"color\":\"#00FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余3次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1

execute if score @s[tag=pass] changetime matches 3 run scoreboard players remove @s money 20
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 3 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费30金币更换起始手牌\",\"color\":\"#00CED1\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余2次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1

execute if score @s[tag=pass] changetime matches 4 run scoreboard players remove @s money 30
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 4 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"花费40金币更换起始手牌\",\"color\":\"#1E90FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余1次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1

execute if score @s[tag=pass] changetime matches 5 run scoreboard players remove @s money 40
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1
execute if score @s[tag=pass] changetime matches 5 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无法更换起始手牌\",\"color\":\"#0000FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键点击更换起始手牌（剩余0次）\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"花费0~40金币\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次更换都使价格提升10金币\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["redraw"],CustomModelData:2} 1

scoreboard players set @s[tag=pass] waiting 10

execute if entity @s[tag=pass] run function ingame:handcard/setback
execute if entity @s[tag=pass] run playsound minecraft:block.chain.place block @s ~ ~ ~ 3 0.7 1
execute if entity @s[tag=pass] run playsound minecraft:ui.loom.select_pattern block @s ~ ~ ~ 3 1.6 1
execute unless entity @s[tag=pass] run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~ 3 1 0

tag @s remove pass