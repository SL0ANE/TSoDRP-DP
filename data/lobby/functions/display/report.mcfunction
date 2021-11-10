tag @s add 123
function gamedata:honor
scoreboard players operation temp winrate = @s win
scoreboard players operation temp winrate *= 100 number
scoreboard players operation temp winrate /= @s gameplayed

scoreboard players operation temp streak = @s streak
execute if score temp streak matches ..-1 run scoreboard players operation temp streak *= -1 number
clear @s emerald

setblock -9 14 -11 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:emerald",Count:1b,tag:{display:{Lore:['{"text":"总局数"}','{"text":"胜场"}','{"text":"胜率"}','{"text":"胜点"}','{"text":"趋势"}'],Name:'[{"text":"我的战绩","color":"aqua","italic":"false"}]'}}}]} destroy
setblock -9 15 -11 minecraft:oak_sign{Text1:"[{\"text\":\"总局数：\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"gameplayed\",\"name\":\"@a[tag=123]\"},\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"胜场：\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"win\",\"name\":\"@a[tag=123]\"},\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"text\":\"胜率：\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"winrate\",\"name\":\"temp\"},\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"%\",\"color\":\"red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"胜点：\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"scores\",\"name\":\"@a[tag=123]\"},\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
data modify block -9 14 -11 Items.[0].tag.display.Lore[0] set from block -9 15 -11 Text1
data modify block -9 14 -11 Items.[0].tag.display.Lore[1] set from block -9 15 -11 Text2
data modify block -9 14 -11 Items.[0].tag.display.Lore[2] set from block -9 15 -11 Text3
data modify block -9 14 -11 Items.[0].tag.display.Lore[3] set from block -9 15 -11 Text4
setblock -9 16 -11 minecraft:oak_sign{Text1:"[{\"text\":\"趋势：\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"streak\",\"name\":\"temp\"},\"color\":\"#FFB5C5\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"连胜\",\"color\":\"#FFB5C5\",\"bold\":\"true\",\"italic\":\"false\"}]",Text2:"[{\"text\":\"趋势：\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"streak\",\"name\":\"temp\"},\"color\":\"#ADD8E6\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"连败\",\"color\":\"#ADD8E6\",\"bold\":\"true\",\"italic\":\"false\"}]",Text3:"[{\"selector\":\"@a[tag=123]\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\" 的战绩\",\"color\":\"aqua\"}]"} destroy
execute if score @s streak matches 1.. run data modify block -9 14 -11 Items.[0].tag.display.Lore[4] set from block -9 16 -11 Text1
execute unless score @s streak matches 1.. run data modify block -9 14 -11 Items.[0].tag.display.Lore[4] set from block -9 16 -11 Text2
data modify block -9 14 -11 Items.[0].tag.display.Name set from block -9 16 -11 Text3
item replace entity @s inventory.18 from block -9 14 -11 container.0
scoreboard players reset temp winrate
scoreboard players reset temp streak
tag @s remove 123