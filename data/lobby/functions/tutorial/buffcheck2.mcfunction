
data modify storage minecraft:minion1buff Current set value {}
data modify storage minecraft:minion2buff Current set value {}
data modify storage minecraft:minion3buff Current set value {}
data modify storage minecraft:minion4buff Current set value {}
data modify storage minecraft:minion5buff Current set value {}
data modify storage minecraft:minion6buff Current set value {}

execute if score @s minioncode matches 1 run data modify storage minecraft:minion1buff Current set from storage minecraft:minion1buff List2[0]
execute if score @s[tag=aggressive] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=keen] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=cunning] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=dodge] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=immune] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=prudent] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=strike] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=tough] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=puzzle] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=block] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=chain] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]
execute if score @s[tag=sweep] minioncode matches 1 if data storage minecraft:minion1buff {Current:""} run data modify storage minecraft:minion1buff List append from storage minecraft:minion1buff List2[0]

execute if score @s minioncode matches 1 run data remove storage minecraft:minion1buff List2[0]
execute if score @s minioncode matches 1 if data storage minecraft:minion1buff List2[0] run function ingame:minion/buffcheck2




execute if score @s minioncode matches 2 run data modify storage minecraft:minion2buff Current set from storage minecraft:minion2buff List2[0]
execute if score @s[tag=aggressive] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=keen] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=cunning] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=dodge] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=immune] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=prudent] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=strike] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=tough] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=puzzle] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=block] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=chain] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]
execute if score @s[tag=sweep] minioncode matches 2 if data storage minecraft:minion2buff {Current:""} run data modify storage minecraft:minion2buff List append from storage minecraft:minion2buff List2[0]

execute if score @s minioncode matches 2 run data remove storage minecraft:minion2buff List2[0]
execute if score @s minioncode matches 2 if data storage minecraft:minion2buff List2[0] run function ingame:minion/buffcheck2




execute if score @s minioncode matches 3 run data modify storage minecraft:minion3buff Current set from storage minecraft:minion3buff List2[0]
execute if score @s[tag=aggressive] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=keen] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=cunning] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=dodge] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=immune] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=prudent] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=strike] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=tough] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=puzzle] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=block] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=chain] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]
execute if score @s[tag=sweep] minioncode matches 3 if data storage minecraft:minion3buff {Current:""} run data modify storage minecraft:minion3buff List append from storage minecraft:minion3buff List2[0]

execute if score @s minioncode matches 3 run data remove storage minecraft:minion3buff List2[0]
execute if score @s minioncode matches 3 if data storage minecraft:minion3buff List2[0] run function ingame:minion/buffcheck2




execute if score @s minioncode matches 4 run data modify storage minecraft:minion4buff Current set from storage minecraft:minion4buff List2[0]
execute if score @s[tag=aggressive] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=keen] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=cunning] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=dodge] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=immune] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=prudent] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=strike] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=tough] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=puzzle] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=block] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=chain] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]
execute if score @s[tag=sweep] minioncode matches 4 if data storage minecraft:minion4buff {Current:""} run data modify storage minecraft:minion4buff List append from storage minecraft:minion4buff List2[0]

execute if score @s minioncode matches 4 run data remove storage minecraft:minion4buff List2[0]
execute if score @s minioncode matches 4 if data storage minecraft:minion4buff List2[0] run function ingame:minion/buffcheck2




execute if score @s minioncode matches 5 run data modify storage minecraft:minion5buff Current set from storage minecraft:minion5buff List2[0]
execute if score @s[tag=aggressive] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=keen] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=cunning] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=dodge] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=immune] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=prudent] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=strike] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=tough] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=puzzle] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=block] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=chain] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]
execute if score @s[tag=sweep] minioncode matches 5 if data storage minecraft:minion5buff {Current:""} run data modify storage minecraft:minion5buff List append from storage minecraft:minion5buff List2[0]

execute if score @s minioncode matches 5 run data remove storage minecraft:minion5buff List2[0]
execute if score @s minioncode matches 5 if data storage minecraft:minion5buff List2[0] run function ingame:minion/buffcheck2



execute if score @s minioncode matches 6 run data modify storage minecraft:minion6buff Current set from storage minecraft:minion6buff List2[0]
execute if score @s[tag=aggressive] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=keen] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=cunning] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=dodge] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=immune] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=prudent] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=strike] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=tough] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=puzzle] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=block] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=chain] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]
execute if score @s[tag=sweep] minioncode matches 6 if data storage minecraft:minion6buff {Current:""} run data modify storage minecraft:minion6buff List append from storage minecraft:minion6buff List2[0]

execute if score @s minioncode matches 6 run data remove storage minecraft:minion6buff List2[0]
execute if score @s minioncode matches 6 if data storage minecraft:minion6buff List2[0] run function ingame:minion/buffcheck2