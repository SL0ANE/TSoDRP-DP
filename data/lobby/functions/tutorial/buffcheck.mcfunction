
tag @s add checking

execute unless score @s recover matches -2 run tag @s[scores={dying=1..}] add dyingrun
execute unless score @s[tag=!dyingrun] dying matches 1.. run tag @s[scores={hp=..0,recover=1..}] add dyingrun2



execute as @s unless score @s aggressivetime matches 1.. run tag @s remove aggressive
execute as @s unless score @s immunetime matches 1.. run tag @s remove immune
execute as @s unless score @s prudenttime matches 1.. run tag @s remove prudent
execute as @s unless score @s toughtime matches 1.. run tag @s remove tough
execute as @s unless score @s keentime matches 1.. run tag @s remove keen
execute as @s unless score @s puzzletime matches 1.. run tag @s remove puzzle
execute as @s unless score @s cunningtime matches 1.. run tag @s remove cunning
execute as @s unless score @s dodgetime matches 1.. run tag @s remove dodge
execute as @s unless score @s blocktime matches 1.. run tag @s remove block
execute as @s unless score @s striketime matches 1.. run tag @s remove strike
execute as @s unless score @s chaintime matches 1.. run tag @s remove chain
execute as @s unless score @s sweeptime matches 1.. run tag @s remove sweep

execute as @s unless score @s dmgimmunetime matches 1.. run tag @s remove dmgimmune

scoreboard players reset @s[tag=!aggressive] aggressivetime
scoreboard players reset @s[tag=!immune] immunetime
scoreboard players reset @s[tag=!prudent] prudenttime
scoreboard players reset @s[tag=!tough] toughtime
scoreboard players reset @s[tag=!keen] keentime
scoreboard players reset @s[tag=!puzzle] puzzletime
scoreboard players reset @s[tag=!cunning] cunningtime
scoreboard players reset @s[tag=!dodge] dodgetime
scoreboard players reset @s[tag=!block] blocktime
scoreboard players reset @s[tag=!strike] striketime
scoreboard players reset @s[tag=!chain] chaintime
scoreboard players reset @s[tag=!sweep] sweeptime

scoreboard players reset @s[tag=!dmgimmune] dmgimmunetime

scoreboard players set @s hasbuff 0
scoreboard players add @s[tag=aggressive] hasbuff 1
scoreboard players add @s[tag=keen] hasbuff 1
scoreboard players add @s[tag=cunning] hasbuff 1
scoreboard players add @s[tag=dodge] hasbuff 1
scoreboard players add @s[tag=immune] hasbuff 1
scoreboard players add @s[tag=prudent] hasbuff 1
scoreboard players add @s[tag=strike] hasbuff 1
scoreboard players add @s[tag=tough] hasbuff 1
scoreboard players add @s[tag=puzzle] hasbuff 1
scoreboard players add @s[tag=block] hasbuff 1
scoreboard players add @s[tag=chain] hasbuff 1
scoreboard players add @s[tag=sweep] hasbuff 1

execute if score @s hasbuff matches 0 run execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=checking,limit=1] minioncode run tag @s add cancelled
execute if score @s hasbuff matches 1.. run execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=checking,limit=1] minioncode run tag @s add mark
execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=dyingrun,limit=1] minioncode run tag @s add skulllogo
execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=dyingrun2,limit=1] minioncode run tag @s add skulllogo


data modify storage minecraft:buff List set value []
data modify storage minecraft:minion1buff Current set value {}
data modify storage minecraft:minion2buff Current set value {}
data modify storage minecraft:minion3buff Current set value {}
data modify storage minecraft:minion4buff Current set value {}
data modify storage minecraft:minion5buff Current set value {}
data modify storage minecraft:minion6buff Current set value {}
execute if score @s minioncode matches 1 run data modify storage minecraft:minion1buff List2 set from storage minecraft:minion1buff List
execute if score @s minioncode matches 1 run data modify storage minecraft:minion1buff List set value []
execute if score @s minioncode matches 2 run data modify storage minecraft:minion2buff List2 set from storage minecraft:minion2buff List
execute if score @s minioncode matches 2 run data modify storage minecraft:minion2buff List set value []
execute if score @s minioncode matches 3 run data modify storage minecraft:minion3buff List2 set from storage minecraft:minion3buff List
execute if score @s minioncode matches 3 run data modify storage minecraft:minion3buff List set value []
execute if score @s minioncode matches 4 run data modify storage minecraft:minion4buff List2 set from storage minecraft:minion4buff List
execute if score @s minioncode matches 4 run data modify storage minecraft:minion4buff List set value []
execute if score @s minioncode matches 5 run data modify storage minecraft:minion5buff List2 set from storage minecraft:minion5buff List
execute if score @s minioncode matches 5 run data modify storage minecraft:minion5buff List set value []
execute if score @s minioncode matches 6 run data modify storage minecraft:minion6buff List2 set from storage minecraft:minion6buff List
execute if score @s minioncode matches 6 run data modify storage minecraft:minion6buff List set value []
function ingame:minion/buffcheck2
data modify storage minecraft:minion1buff Current set value {}
data modify storage minecraft:minion2buff Current set value {}
data modify storage minecraft:minion3buff Current set value {}
data modify storage minecraft:minion4buff Current set value {}
data modify storage minecraft:minion5buff Current set value {}
data modify storage minecraft:minion6buff Current set value {}
execute if score @s minioncode matches 1 run data modify storage minecraft:buff List set from storage minecraft:minion1buff List
execute if score @s minioncode matches 2 run data modify storage minecraft:buff List set from storage minecraft:minion2buff List
execute if score @s minioncode matches 3 run data modify storage minecraft:buff List set from storage minecraft:minion3buff List
execute if score @s minioncode matches 4 run data modify storage minecraft:buff List set from storage minecraft:minion4buff List
execute if score @s minioncode matches 5 run data modify storage minecraft:buff List set from storage minecraft:minion5buff List
execute if score @s minioncode matches 6 run data modify storage minecraft:buff List set from storage minecraft:minion6buff List
setblock 0 1 0 minecraft:oak_sign{Text1:"[{\"nbt\":\"List[0]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[1]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[2]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[3]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[4]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[5]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[6]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[7]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[8]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[9]\",\"storage\":\"minecraft:buff\"},{\"nbt\":\"List[10]\",\"storage\":\"minecraft:buff\"}]",Text2:"[{\"text\":\"☠\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"text\":\"☠\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[{\"text\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy


execute as @e[tag=mark] at @e[tag=checking,limit=1] run data modify entity @s CustomName set from block 0 1 0 Text1
data merge entity @e[tag=mark,limit=1] {CustomNameVisible:1b}
data merge entity @e[tag=cancelled,limit=1] {CustomName:"[{\"text\":\"\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",CustomNameVisible:0b}
execute if entity @s[scores={recover=-2}] as @e[tag=mark] run data modify entity @s CustomName set from block 0 1 0 Text4
execute as @e[tag=skulllogo,limit=1] at @e[tag=dyingrun,limit=1] run data modify entity @s CustomName set from block 0 1 0 Text2
execute as @e[tag=skulllogo,limit=1] at @e[tag=dyingrun2,limit=1] run data modify entity @s CustomName set from block 0 1 0 Text3
execute as @e[tag=skulllogo,limit=1] at @e[tag=dyingrun,limit=1] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=skulllogo,limit=1] at @e[tag=dyingrun2,limit=1] run data merge entity @s {CustomNameVisible:1}
tag @s remove addaggressive
tag @s remove addblock
tag @s remove addcunning
tag @s remove adddodge
tag @s remove addimmune
tag @s remove addkeen
tag @s remove addprudent
tag @s remove addpuzzle
tag @s remove addstrike
tag @s remove addtough
tag @s remove addchain
tag @s remove addsweep
tag @e remove skulllogo
tag @e[tag=mark] remove mark
tag @e[tag=cancelled] remove cancelled
tag @s remove checking

setblock 0 1 0 air
tag @s remove dyingrun
tag @s remove dyingrun2