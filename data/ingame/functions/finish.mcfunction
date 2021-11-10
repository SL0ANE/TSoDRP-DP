execute if entity @e[tag=mascot,scores={ownedby=1,hp=1..}] if entity @e[tag=mascot,scores={ownedby=2,hp=..0}] run tag @e[tag=mascot,scores={ownedby=1}] add win
execute if entity @e[tag=mascot,scores={ownedby=1,hp=1..}] if entity @e[tag=mascot,scores={ownedby=2,hp=..0}] run tag @a[scores={playernumber=1}] add win
execute if entity @e[tag=mascot,scores={ownedby=1,hp=1..}] if entity @e[tag=mascot,scores={ownedby=2,hp=..0}] run tag @e[tag=mascot,scores={ownedby=2}] add lose
execute if entity @e[tag=mascot,scores={ownedby=1,hp=1..}] if entity @e[tag=mascot,scores={ownedby=2,hp=..0}] run tag @a[scores={playernumber=2}] add lose

execute if entity @e[tag=mascot,scores={ownedby=2,hp=1..}] if entity @e[tag=mascot,scores={ownedby=1,hp=..0}] run tag @e[tag=mascot,scores={ownedby=2}] add win
execute if entity @e[tag=mascot,scores={ownedby=2,hp=1..}] if entity @e[tag=mascot,scores={ownedby=1,hp=..0}] run tag @a[scores={playernumber=2}] add win
execute if entity @e[tag=mascot,scores={ownedby=2,hp=1..}] if entity @e[tag=mascot,scores={ownedby=1,hp=..0}] run tag @e[tag=mascot,scores={ownedby=1}] add lose
execute if entity @e[tag=mascot,scores={ownedby=2,hp=1..}] if entity @e[tag=mascot,scores={ownedby=1,hp=..0}] run tag @a[scores={playernumber=1}] add lose



execute if entity @e[tag=mascot,scores={ownedby=1,hp=..0}] if entity @e[tag=mascot,scores={ownedby=2,hp=..0}] run tag @e add draw
execute if entity @e[tag=mascot,scores={ownedby=1,hp=..0}] if entity @e[tag=mascot,scores={ownedby=2,hp=..0}] run tag @a[scores={playernumber=1..2}] add draw


title @a[tag=ingame] times 10 60 10
execute if entity @e[tag=mascot,tag=win] run title @a[tag=spectating] title [{"selector":"@e[tag=mascot,tag=win]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 赢得对局","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=mascot,tag=draw] run title @a[tag=spectating] title [{"text":"平局","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @e[tag=mascot,scores={ownedby=1},tag=win] run title @a[scores={playernumber=1}] title [{"text":"你赢了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=mascot,scores={ownedby=2},tag=win] run title @a[scores={playernumber=2}] title [{"text":"你赢了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @e[tag=mascot,scores={ownedby=1},tag=lose] run title @a[scores={playernumber=1}] title [{"text":"你输了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=mascot,scores={ownedby=2},tag=lose] run title @a[scores={playernumber=2}] title [{"text":"你输了","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @e[tag=mascot,scores={ownedby=1},tag=draw] run title @a[scores={playernumber=1}] title [{"text":"平局","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=mascot,scores={ownedby=2},tag=draw] run title @a[scores={playernumber=2}] title [{"text":"平局","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


scoreboard objectives add temp dummy
scoreboard objectives add temp2 dummy
scoreboard players operation honor_diff temp = @e[tag=mascot,tag=lose] honor
scoreboard players operation honor_diff temp -= @e[tag=mascot,tag=win] honor
execute if score honor_diff temp matches 2.. run scoreboard players operation @s[tag=win] temp *= honor_diff temp
execute if score honor_diff temp matches 2.. run scoreboard players operation @s[tag=lose] temp *= honor_diff temp
execute if score honor_diff temp matches 2.. run scoreboard players operation @s[tag=draw] temp *= honor_diff temp


execute as @e[tag=mascot,scores={ownedby=1..2}] run function gamedata:storedata
execute as @a[scores={playernumber=1..2}] run function gamedata:playerdataset
execute as @a run function lobby:winrate

execute if entity @e[tag=win,tag=mascot,tag=ownedby1] as @e[tag=reportholder,scores={bet=1..}] run tag @s add winbet
execute if entity @e[tag=win,tag=mascot,tag=ownedby2] as @e[tag=reportholder,scores={bet=..-1}] run tag @s add winbet
execute if entity @e[tag=win,tag=mascot,tag=ownedby1] as @e[tag=reportholder,scores={bet=..-1}] run tag @s add losebet
execute if entity @e[tag=win,tag=mascot,tag=ownedby2] as @e[tag=reportholder,scores={bet=1..}] run tag @s add losebet

scoreboard players operation system bet += player1 bet
scoreboard players operation system bet += player2 bet
scoreboard players operation system bet *= 110 number
scoreboard players operation system bet /= 100 number
scoreboard players operation system temp2 = system bet
scoreboard players operation system temp2 *= 10 number
scoreboard players operation system temp2 /= 100 number



execute as @e[tag=winbet] run function ingame:winbet
execute as @e[tag=losebet] run function ingame:losebet

scoreboard players operation system honor += @a[tag=win] honor
scoreboard players operation system honor += @a[tag=lose] honor


execute as @a[tag=playing] run function ingame:moneydistribute
execute as @a run function gamedata:advancement
execute as @a run function gamedata:honor


setblock 10 1 10 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=mascot,scores={ownedby=2}]\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  （先手获胜）\",\"color\":\"red\"},{\"text\":\" 剩余\",\"color\":\"white\"},{\"score\":{\"objective\":\"hp\",\"name\":\"@e[tag=mascot,scores={ownedby=2}]\"},\"color\":\"white\"},{\"text\":\"❤\",\"color\":\"white\"}]",Text2:"[{\"selector\":\"@e[tag=mascot,scores={ownedby=1}]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  （后手获胜）\",\"color\":\"red\"},{\"text\":\" 剩余\",\"color\":\"white\"},{\"score\":{\"objective\":\"hp\",\"name\":\"@e[tag=mascot,scores={ownedby=1}]\"},\"color\":\"white\"},{\"text\":\"❤\",\"color\":\"white\"}]",Text3:"[{\"selector\":\"@e[tag=mascot,scores={ownedby=2}]\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  （先手落败）\",\"color\":\"dark_aqua\"},{\"text\":\" 死于第\",\"color\":\"white\"},{\"score\":{\"objective\":\"round\",\"name\":\"system\"},\"color\":\"white\"},{\"text\":\"轮\",\"color\":\"white\"}]",Text4:"[{\"selector\":\"@e[tag=mascot,scores={ownedby=1}]\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"  （后手落败）\",\"color\":\"dark_aqua\"},{\"text\":\" 死于第\",\"color\":\"white\"},{\"score\":{\"objective\":\"round\",\"name\":\"system\"},\"color\":\"white\"},{\"text\":\"轮\",\"color\":\"white\"}]"} destroy
execute if entity @e[tag=win,tag=mascot,scores={ownedby=2}] run data modify block -203 37 38 Items.[0].tag.display.Lore.[1] set from block 10 1 10 Text1
execute if entity @e[tag=lose,tag=mascot,scores={ownedby=2}] run data modify block -203 37 38 Items.[0].tag.display.Lore.[1] set from block 10 1 10 Text3
execute if entity @e[tag=win,tag=mascot,scores={ownedby=1}] run data modify block -203 37 38 Items.[0].tag.display.Lore.[16] set from block 10 1 10 Text2
execute if entity @e[tag=lose,tag=mascot,scores={ownedby=1}] run data modify block -203 37 38 Items.[0].tag.display.Lore.[16] set from block 10 1 10 Text4

scoreboard objectives remove temp
scoreboard objectives remove temp2
scoreboard players reset system honor
scoreboard players reset temp
scoreboard players reset temp2
tag @e[tag=win] remove win
tag @e[tag=lose] remove lose
tag @e[tag=draw] remove draw
tag @e remove upwarddefeat
tag @e remove winbet
tag @e remove losebet
tag @e remove dying
setblock -203 36 38 minecraft:hopper