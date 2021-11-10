tag @s add checker

execute as @e[tag=card,scores={handorder=1..}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run tag @s add checking
execute store result score @s handcardcount if entity @e[tag=checking]
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6

execute as @e[tag=checking] if data entity @s HandItems[1].Count run data modify entity @s ArmorItems[3] set from entity @s HandItems[1]
execute as @e[tag=checking] run data modify entity @s HandItems[1] set value {}

execute as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run tag @s add checking2
execute store result score @s dcpilecount if entity @e[tag=checking2]
execute unless score @s dcpilecount matches 1.. run scoreboard players set @s dcpilecount 0
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run tag @s add checking3
execute store result score @s deckcount if entity @e[tag=checking3]
execute unless score @s deckcount matches 1.. run scoreboard players set @s deckcount 0

setblock 3 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"↓牌堆↓（\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"deckcount\",\"name\":\"@e[tag=checker]\"},\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"）\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"text\":\"↓牌堆↓（\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"deckcount\",\"name\":\"@e[tag=checker]\"},\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"）\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"text\":\"↓弃牌堆↓（\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"dcpilecount\",\"name\":\"@e[tag=checker]\"},\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"）\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"text\":\"↓弃牌堆↓（\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"dcpilecount\",\"name\":\"@e[tag=checker]\"},\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"）\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute as @e[tag=deck,scores={ownedby=1}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run data modify entity @s CustomName set from block 3 0 0 Text1
execute as @e[tag=deck,scores={ownedby=2}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run data modify entity @s CustomName set from block 3 0 0 Text2
execute as @e[tag=dcpile,scores={ownedby=1}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run data modify entity @s CustomName set from block 3 0 0 Text3
execute as @e[tag=dcpile,scores={ownedby=2}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run data modify entity @s CustomName set from block 3 0 0 Text4

tag @e remove checking3
tag @e remove checking2
tag @e remove checking
tag @s remove checker