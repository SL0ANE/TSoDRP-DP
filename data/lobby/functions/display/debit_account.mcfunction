tag @s add 123
execute as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add targetholder
clear @s white_dye{CustomModelData:1}
execute unless score @s money matches 0.. run scoreboard players set @s money 0
execute as @e[tag=targetholder] unless score @s shaman matches 1.. run scoreboard players set @s shaman 0
execute as @e[tag=targetholder] unless score @s miku matches 1.. run scoreboard players set @s miku 0
execute as @e[tag=targetholder] unless score @s hutao matches 1.. run scoreboard players set @s hutao 0
execute as @e[tag=targetholder] unless score @s nyan matches 1.. run scoreboard players set @s nyan 0
execute as @e[tag=targetholder] unless score @s joey matches 1.. run scoreboard players set @s joey 0
execute as @e[tag=targetholder] unless score @s kaiba matches 1.. run scoreboard players set @s kaiba 0
execute as @e[tag=targetholder] unless score @s yugi matches 1.. run scoreboard players set @s yugi 0
execute as @e[tag=targetholder] unless score @s nono matches 1.. run scoreboard players set @s nono 0
execute as @e[tag=targetholder] unless score @s supernono matches 1.. run scoreboard players set @s supernono 0

setblock -9 14 -9 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:1,display:{Lore:['{"text":"余额"}','{"text":"1"}','{"text":"2"}','{"text":"3"}','{"text":"4"}','{"text":"5"}','{"text":"6"}','{"text":"7"}','{"text":"8"}','{"text":"9"}','{"text":"10"}','{"text":"11"}'],Name:'[{"text":"我的账户","color":"gold","italic":"false"}]'}}}]} destroy
setblock -9 15 -9 minecraft:oak_sign{Text1:"[{\"text\":\"余额：\",\"color\":\"#98FB98\",\"bold\":\"true\"},{\"score\":{\"objective\":\"money\",\"name\":\"@a[tag=123]\"},\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -9 Items.[0].tag.display.Lore[0] set from block -9 15 -9 Text1
setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"武士：\",\"color\":\"gray\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"武士：\",\"color\":\"gray\",\"bold\":\"true\"},{\"score\":{\"objective\":\"temila\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
data modify block -9 14 -9 Items.[0].tag.display.Lore[1] set from block -9 16 -9 Text1
setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"南瓜杰克：\",\"color\":\"gray\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"南瓜杰克：\",\"color\":\"gray\",\"bold\":\"true\"},{\"score\":{\"objective\":\"jack\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
data modify block -9 14 -9 Items.[0].tag.display.Lore[2] set from block -9 16 -9 Text1
setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"萨满：\",\"color\":\"blue\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"萨满：\",\"color\":\"blue\",\"bold\":\"true\"},{\"score\":{\"objective\":\"shaman\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] shaman matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[3] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] shaman matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[3] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"初音未来：\",\"color\":\"yellow\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"初音未来：\",\"color\":\"yellow\",\"bold\":\"true\"},{\"score\":{\"objective\":\"miku\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] miku matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[4] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] miku matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[4] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"胡桃匣子：\",\"color\":\"yellow\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"胡桃匣子：\",\"color\":\"yellow\",\"bold\":\"true\"},{\"score\":{\"objective\":\"hutao\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] hutao matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[5] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] hutao matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[5] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"彩虹喵：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"彩虹喵：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"score\":{\"objective\":\"nyan\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] nyan matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[6] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] nyan matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[6] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"城之内克也：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"城之内克也：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"score\":{\"objective\":\"joey\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] joey matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[7] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] joey matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[7] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"海马濑人：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"海马濑人：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"score\":{\"objective\":\"kaiba\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] kaiba matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[8] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] kaiba matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[8] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"武藤游戏：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"武藤游戏：\",\"color\":\"dark_purple\",\"bold\":\"true\"},{\"score\":{\"objective\":\"yugi\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] yugi matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[9] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] yugi matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[9] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"Nono：\",\"color\":\"blue\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"Nono：\",\"color\":\"blue\",\"bold\":\"true\"},{\"score\":{\"objective\":\"nono\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] nono matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[10] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] nono matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[10] set from block -9 16 -9 Text2

setblock -9 16 -9 minecraft:oak_sign{Text1:"[{\"text\":\"超能Nono：\",\"color\":\"yellow\",\"bold\":\"true\"},{\"text\":\"已拥有\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"超能Nono：\",\"color\":\"yellow\",\"bold\":\"true\"},{\"score\":{\"objective\":\"supernono\",\"name\":\"@e[tag=targetholder]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/32\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy
execute if score @e[tag=targetholder,limit=1] supernono matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[11] set from block -9 16 -9 Text1
execute unless score @e[tag=targetholder,limit=1] supernono matches 32.. run data modify block -9 14 -9 Items.[0].tag.display.Lore[11] set from block -9 16 -9 Text2


item replace entity @s inventory.26 from block -9 14 -9 container.0

tag @e remove targetholder
tag @s remove 123