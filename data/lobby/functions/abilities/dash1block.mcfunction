execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~

#一格


execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a[distance=0.1..]
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:12,Tags:["dash","1stage"]}}}] anchored eyes positioned ^ ^ ^4 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @s
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^ ^ ^4 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^1 ^-1 ^4 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^2 ^-1.2 ^3.25 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^3 ^-1.4 ^2.7 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^-1 ^1 ^4 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^-2 ^1.2 ^3.25 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[nbt={SelectedItem:{tag:{CustomModelData:18,Tags:["dash","1stage"]}}}] anchored eyes positioned ^-3 ^1.4 ^2.7 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a

execute at @s if entity @a[distance=0.1..2] run scoreboard players add @s combo 1
execute at @s if entity @a[distance=0.1..2] run scoreboard players set @s combotime 30
execute at @s as @a[distance=0.1..2] run scoreboard players add @s dmgtaking 10
execute at @s if entity @e[tag=landmark,distance=0.1..2] run scoreboard players add @s combo 1
execute at @s if entity @e[tag=landmark,distance=0.1..2] run scoreboard players set @s combotime 30
execute at @s as @e[tag=landmark,distance=0.1..2] run scoreboard players add @s dmgtaking 10
execute at @s as @e[tag=landmark,distance=0.1..2] run effect give @s instant_damage 1 0 true