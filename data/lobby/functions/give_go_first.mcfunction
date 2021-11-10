tag @s add 123
clear @s carrot_on_a_stick{CustomModelData:26}

execute if entity @s[tag=!go_first] run setblock -9 14 -5 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:26,Tags:["go_first_switch"],display:{Lore:['{"text":"下一局对战有25%的额外几率获得先手","color":"white","italic":false}','{"text":"若你没有获得先手则返还","color":"white","italic":true,"bold":true}','{"text":"右键使用","color":"white","italic":false}'],Name:'[{"text":"争抢先手","color":"aqua","italic":"false"}]'}}}]} destroy
execute if entity @s[tag=go_first] run setblock -9 14 -5 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:?",lvl:0}],CustomModelData:26,Tags:["go_first_switch"],display:{Lore:['{"text":"下一局对战有25%的额外几率获得先手","color":"white","italic":false}','{"text":"若你没有获得先手则返还","color":"white","italic":true,"bold":true}','{"text":"右键使用","color":"white","italic":false}'],Name:'[{"text":"争抢先手","color":"aqua","italic":"false"}]'}}}]} destroy
setblock -9 15 -5 minecraft:oak_sign{Text1:"[{\"text\":\"争抢先手（已开启）   \",\"color\":\"green\",\"bold\":\"true\"},{\"text\":\"剩余\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"go_first\",\"name\":\"@a[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"个\",\"color\":\"white\",\"bold\":\"true\"}]",Text2:"[{\"text\":\"争抢先手（已关闭）   \",\"color\":\"red\",\"bold\":\"true\"},{\"text\":\"剩余\",\"color\":\"white\",\"bold\":\"true\"},{\"score\":{\"objective\":\"go_first\",\"name\":\"@a[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"个\",\"color\":\"white\",\"bold\":\"true\"}]",Text3:"[{\"text\":\"争抢先手（已关闭）   \",\"color\":\"red\",\"bold\":\"true\"},{\"text\":\"剩余0个\",\"color\":\"white\",\"bold\":\"true\"}]"} destroy


execute if score @s[tag=go_first] go_first matches 1.. run data modify block -9 14 -5 Items.[0].tag.display.Name set from block -9 15 -5 Text1
execute if score @s[tag=!go_first] go_first matches 1.. run data modify block -9 14 -5 Items.[0].tag.display.Name set from block -9 15 -5 Text2
execute unless score @s go_first matches 1.. run data modify block -9 14 -5 Items.[0].tag.display.Name set from block -9 15 -5 Text3

item replace entity @s hotbar.1 from block -9 14 -5 container.0
tag @s remove 123