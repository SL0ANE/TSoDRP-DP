tag @s add 556
execute as @a if score @s playerid = @e[tag=556,limit=1] playerid run tag @s add 312

scoreboard players set temp4 bet 0
execute if score @s bet matches 1.. run scoreboard players operation temp4 bet += @e[tag=reportholder,scores={bet=1..}] bet
execute if score @s bet matches ..-1 run scoreboard players operation temp4 bet -= @e[tag=reportholder,scores={bet=..-1}] bet
#所有赌了同一方的押金
scoreboard players set temp6 bet 0
scoreboard players operation temp6 bet = system bet
scoreboard players operation temp6 bet *= @s bet
scoreboard players operation temp6 bet /= temp4 bet
execute if score temp6 bet matches ..-1 run scoreboard players operation temp6 bet *= -1 number

#预期收益
scoreboard players operation @s bet = temp6 bet
execute as @a[tag=312] run tellraw @s [{"text":"[金币奖励]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"正确下注使你获得","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"@e[tag=556]"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=312] run scoreboard players operation @s money += @e[tag=556] bet
execute as @a[tag=312] run scoreboard players reset @e[tag=556] bet

scoreboard players operation @s storedbet = temp6 bet
execute if score @s bet matches 1.. run scoreboard players operation @s storedbet *= -1 number
scoreboard players reset @s bet
tag @s remove 556
tag @a remove 312

