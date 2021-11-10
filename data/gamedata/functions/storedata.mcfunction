tag @s add running




scoreboard players add @s[tag=win] temp 5
scoreboard players remove @s[tag=lose] temp 4
scoreboard players remove @s[tag=draw] temp 3


#如果赢的是低段位的玩家，那么增长或减少的胜点将被乘以段位差


execute unless entity @e[tag=targetplayer2] as @a if score @s playerid = @e[tag=running,limit=1] playerid run tag @s add targetplayer2
execute as @e[tag=reportholder] if score @s playerid = @e[tag=running,limit=1] playerid run tag @s add targetholder
execute if entity @s[tag=win] run scoreboard players add @e[tag=targetholder] totalgameplayed 1
execute if entity @s[tag=lose] run scoreboard players add @e[tag=targetholder] totalgameplayed 1
execute if entity @s[tag=draw] run scoreboard players add @e[tag=targetholder] totalgameplayed 1
execute if entity @s[tag=win] run scoreboard players add @e[tag=targetholder] gameplayed 1
execute if entity @s[tag=lose] run scoreboard players add @e[tag=targetholder] gameplayed 1
execute if entity @s[tag=draw] run scoreboard players add @e[tag=targetholder] gameplayed 1
execute if entity @s[tag=win] as @e[tag=targetholder] unless score @s streak matches 1.. run scoreboard players set @s streak 0
execute if entity @s[tag=lose] as @e[tag=targetholder] unless score @s streak matches ..-1 run scoreboard players set @s streak 0
execute if entity @s[tag=draw] as @e[tag=targetholder] unless score @s streak matches 0 run scoreboard players set @s streak 0
execute if entity @s[tag=win] as @e[tag=targetholder] run scoreboard players add @s streak 1
execute if entity @s[tag=lose] as @e[tag=targetholder] run scoreboard players remove @s streak 1




execute if entity @s[tag=win] run scoreboard players add @e[tag=targetholder] win 1
execute if entity @s[tag=win] run scoreboard players add @e[tag=targetholder] totalwin 1
execute if entity @s[tag=lose] run scoreboard players add @e[tag=targetholder] lose 1
execute if entity @s[tag=lose] run scoreboard players add @e[tag=targetholder] totallose 1
execute if entity @s[tag=draw] run scoreboard players add @e[tag=targetholder] gamedraw 1
execute if entity @s[tag=draw] run scoreboard players add @e[tag=targetholder] totalgamedraw 1


execute if entity @s[tag=win] run scoreboard players operation @s temp += @e[tag=targetholder] streak
execute if entity @s[tag=lose] run scoreboard players operation @s temp += @e[tag=targetholder] streak
scoreboard players operation @e[tag=targetholder] scores += @s temp
execute if entity @s[scores={temp=..-1}] run scoreboard players operation @s temp *= -1 number
execute unless score honor_diff temp matches 2.. if entity @s[tag=win] as @a[tag=targetplayer2] run tellraw @s [{"text":"[捷报]  ","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"战斗获胜。本局你获得了","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp","name":"@e[tag=running]"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜点！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score honor_diff temp matches 2.. if entity @s[tag=win] as @a[tag=targetplayer2] run tellraw @s [{"text":"[捷报]  ","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"战斗获胜。本局你因击败段位高于你的","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=lose]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"获得了","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp","name":"@e[tag=running]"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜点！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=draw] as @a[tag=targetplayer2] run tellraw @s [{"text":"[战报]  ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"战斗平局。本局你失去了","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp","name":"@e[tag=running]"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜点！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute unless score honor_diff temp matches 2.. if entity @s[tag=lose] as @a[tag=targetplayer2] run tellraw @s [{"text":"[败报]  ","color":"dark_aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"战斗落败。本局你失去了","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp","name":"@e[tag=running]"},"color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜点！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score honor_diff temp matches 2.. if entity @s[tag=lose] as @a[tag=targetplayer2] run tellraw @s [{"text":"[败报]  ","color":"dark_aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"战斗落败。本局你因败给段位低于你的","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=mascot,tag=win]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"失去了","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"temp","name":"@e[tag=running]"},"color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜点！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]

tag @a remove targetplayer2
tag @e remove targetholder
tag @s remove running