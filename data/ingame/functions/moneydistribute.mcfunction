tag @s add 713

execute as @s[tag=win] run scoreboard players add @s temp2 70
execute as @s[tag=draw] run scoreboard players add @s temp2 60
execute as @s[tag=lose] run scoreboard players add @s temp2 50

execute as @s run scoreboard players operation @s temp2 *= system honor
scoreboard players operation @s temp2 /= 2 number




execute unless score system temp2 matches 1.. run tellraw @s[tag=win] [{"text":"[金币奖励]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"获胜使你获得","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp2","name":"@a[tag=713]"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"","color":"#98FB98","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score system temp2 matches 1.. run tellraw @s[tag=win] [{"text":"[金币奖励]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"获胜使你获得","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp2","name":"@a[tag=713]"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"+","color":"#98FB98","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp2","name":"system"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @s[tag=win] run scoreboard players operation @s temp2 += system temp2

tellraw @s[tag=draw] [{"text":"[金币奖励]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"平局使你获得","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp2","name":"@a[tag=713]"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]


tellraw @s[tag=lose] [{"text":"[金币奖励]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"落败使你获得","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp2","name":"@a[tag=713]"},"color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @s remove 713
scoreboard players operation @s money += @s temp2