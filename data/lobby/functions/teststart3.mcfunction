execute if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:6b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:7b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:8b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:9b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:10b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:11b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:12b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:13b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:14b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:15b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:16b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:17b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:18b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:19b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:20b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:21b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:22b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:23b}] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:24b}] run tag @s add pass
tag @s[tag=!pass] add no_deck
tag @s remove pass
#——————————————————————————-

#随从限制检测
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["biexibu"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["xinran"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["bingfengleisai"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["sheshouzuo"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["shuangyuzuo"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["jinniuzuo"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["modeleide"]}}] run tag @s add no_deck
execute unless score r_minion system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["chuangshizhiling"]}}] run tag @s add no_deck
#随从限制检测


#卡牌限制检测，禁止
execute unless score r_card system matches 1 if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["classic","17"]}}] run tag @s add no_deck

#卡牌限制检测，禁止

scoreboard players set limit_1_test system 0
#卡牌限制检测，限一
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["classic","1"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["classic","8"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["classic","13"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["yuepunk","2"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["knights","9"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["potato","5"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["potato","9"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["gods","1"]}}]
execute unless score r_card system matches 1 unless score limit_1_test system matches 2.. store result score limit_1_test system if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{tag:{Tags:["gods","9"]}}]





execute if score limit_1_test system matches 2.. run tag @s add no_deck
#卡牌限制检测，限一



