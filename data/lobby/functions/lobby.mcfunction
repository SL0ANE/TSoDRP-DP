execute as @a unless score @s mascot matches 1.. run scoreboard players set @s mascot 1
execute as @e[type=item_frame] run data merge entity @s {ItemRotation:0b}
#execute as @a at @s run function lobby:motion
#function lobby:abilities

function lobby:gambles

execute as @e[tag=Minion6] at @s run particle minecraft:enchant ~ ~0.2 ~ 0 0 0 0.5 3 force



execute as @a[nbt=!{SelectedItem:{tag:{Tags:["dash"]}}}] run attribute @s minecraft:generic.attack_speed base set 4
execute as @a[nbt={SelectedItem:{tag:{Tags:["dash"]}}}] run attribute @s minecraft:generic.attack_speed base set 0
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{Tags:["spectator_quit"]}}}] at @s run function lobby:spectator_quit
execute as @a[tag=!ingame,tag=!preparing,tag=!tutorial,nbt={Inventory:[{Slot:-106b,tag:{Tags:["cursor"]}}]}] at @s run function lobby:skins
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{Tags:["cursor"]}}}] at @s run function lobby:ray
execute as @a[scores={rightclick2=1..},nbt={SelectedItem:{tag:{Tags:["cursor"]}}}] at @s run function lobby:ray


#execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["cursor"]}}]}] at @s run function lobby:changecard

execute unless score system system matches 1.. as @e[tag=starter] run data merge entity @s {CustomName:'{"text":"游戏开始","color":"red"}'}
execute if score system system matches 1.. as @e[tag=starter] run data merge entity @s {CustomName:'{"text":"旁观比赛","color":"green"}'}
execute unless score system system matches 1.. if score system mode matches 6 as @e[tag=starter] at @s run function lobby:teststart
execute if score system system matches 1.. if score system mode matches 6 as @e[tag=starter] at @s run function lobby:testspectate


execute as @e[tag=rank] at @s run function lobby:rankdisplay
#execute as @a at @s unless block ~ ~-2.01 ~ minecraft:bricks run function lobby:shop/reset


#execute as @a at @s if block ~ ~-1.01 ~ minecraft:diamond_block if block ~ ~-2.01 ~ minecraft:bricks run function lobby:shop/mascotshop
#execute as @a at @s if block ~ ~-1.01 ~ minecraft:gold_block if block ~ ~-2.01 ~ minecraft:bricks run function lobby:shop/toolshop
execute as @a[tag=!playing] at @s run function lobby:testformascot
execute as @e[tag=mascot1,tag=lobby] at @s run function lobby:followmaster




function lobby:gamecd
execute as @a unless score @s scores matches 0.. run scoreboard players set @s scores 0

execute as @a[tag=!playing,gamemode=adventure] at @s run function lobby:playerinventoryui

