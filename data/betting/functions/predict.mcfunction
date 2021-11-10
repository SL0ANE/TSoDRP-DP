tag @s add 123
execute as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add 234
execute as @e[tag=mascot,tag=ownedby1] run tag @s add player1
execute as @e[tag=mascot,tag=ownedby2] run tag @s add player2
scoreboard players set temp5 bet 0
scoreboard players operation temp5 bet += player1 bet
scoreboard players operation temp5 bet += player2 bet
scoreboard players operation temp5 bet *= 110 number
scoreboard players operation temp5 bet /= 100 number
#奖池
scoreboard players set temp4 bet 0
execute if score @e[tag=234,limit=1] bet matches 1.. run scoreboard players operation temp4 bet += @e[tag=reportholder,scores={bet=1..}] bet
execute if score @e[tag=234,limit=1] bet matches ..-1 run scoreboard players operation temp4 bet -= @e[tag=reportholder,scores={bet=..-1}] bet
#所有赌了同一方的押金
scoreboard players operation temp6 bet = temp5 bet
scoreboard players operation temp6 bet *= @e[tag=234] bet
scoreboard players operation temp6 bet /= temp4 bet
execute if score temp6 bet matches ..-1 run scoreboard players operation temp6 bet *= -1 number
#预期收益
scoreboard players set temp3 bet 0
scoreboard players operation temp3 bet = @e[tag=234] bet
execute if score temp3 bet matches 1.. run tag @e[tag=player1] add pick
execute if score temp3 bet matches ..-1 run tag @e[tag=player2] add pick
execute if score temp3 bet matches ..-1 run scoreboard players operation temp3 bet *= -1 number
#你的下注
scoreboard players set temp7 gamecd 0
scoreboard players operation temp7 gamecd = betclock gamecd
scoreboard players add temp7 gamecd 19
scoreboard players operation temp7 gamecd /= 20 number
#收盘倒计时

execute if score temp3 bet matches 1.. if score betclock gamecd matches 1.. run title @s actionbar [{"text":"奖池：","color":"#F08080","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp5"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    你的下注：","color":"#EEE8AA","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp3"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"→","color":"gray","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    预期收益：","color":"#00BFFF","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp6"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    余额：","color":"#54FF9F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"money","name":"@s"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    收盘时间：","color":"#EE82EE","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"gamecd","name":"temp7"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score temp3 bet matches 1.. if score betclock gamecd matches 0 run title @s actionbar [{"text":"奖池：","color":"#F08080","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp5"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    你的下注：","color":"#EEE8AA","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp3"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"→","color":"gray","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    预期收益：","color":"#00BFFF","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp6"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    余额：","color":"#54FF9F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"money","name":"@s"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    收盘时间：","color":"#EE82EE","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"已收盘","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute unless score temp3 bet matches 1.. if score betclock gamecd matches 1.. run title @s actionbar [{"text":"奖池：","color":"#F08080","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp5"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    你的下注：","color":"#EEE8AA","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp3"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    预期收益：","color":"#00BFFF","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp6"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    余额：","color":"#54FF9F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"money","name":"@s"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    收盘时间：","color":"#EE82EE","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"gamecd","name":"temp7"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute unless score temp3 bet matches 1.. if score betclock gamecd matches 0 run title @s actionbar [{"text":"奖池：","color":"#F08080","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp5"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    你的下注：","color":"#EEE8AA","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp3"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    预期收益：","color":"#00BFFF","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"temp6"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    余额：","color":"#54FF9F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"money","name":"@s"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    收盘时间：","color":"#EE82EE","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"已收盘","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


scoreboard players reset temp3 bet
scoreboard players reset temp4 bet
scoreboard players reset temp5 bet
scoreboard players reset temp6 bet
scoreboard players reset temp7 gamecd
tag @s remove 123
tag @e remove 234
tag @e remove player1
tag @e remove player2
tag @e remove pick