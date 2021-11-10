tag @s add 556
execute as @a if score @s playerid = @e[tag=556,limit=1] playerid run tag @s add 312

execute as @a[tag=312] run tellraw @s [{"text":"[金币奖励]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"错误下注使你白白失去","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"bet","name":"@e[tag=556]"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players reset @s bet


tag @s remove 556
tag @a remove 312

