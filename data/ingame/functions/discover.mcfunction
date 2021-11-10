
scoreboard objectives add discovercount dummy
execute store result score count discovercount if entity @e[tag=discovered]
tag @e[tag=discovered,tag=!1pick,tag=!2pick,tag=!3pick,limit=1,sort=random] add 1pick
tag @e[tag=discovered,tag=!1pick,tag=!2pick,tag=!3pick,limit=1,sort=random] add 2pick
tag @e[tag=discovered,tag=!1pick,tag=!2pick,tag=!3pick,limit=1,sort=random] add 3pick

execute as @e[tag=discovered] run function ingame:removefromgame
execute as @e[tag=discovered] run scoreboard players operation @s ownedby = @e[tag=mascot,tag=onturn] ownedby

execute if score count discovercount matches 3 as @e[tag=1pick] if score @s ownedby matches 2 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,150.0f,0f]}}
execute if score count discovercount matches 3 as @e[tag=1pick] if score @s ownedby matches 2 if score system arena matches 1 run tp @s 69.5 29.5 -5.5
execute if score count discovercount matches 3 as @e[tag=2pick] if score @s ownedby matches 2 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,-180.0f,0f]}}
execute if score count discovercount matches 3 as @e[tag=2pick] if score @s ownedby matches 2 if score system arena matches 1 run tp @s 67.5 29.5 -5.5
execute if score count discovercount matches 3 as @e[tag=3pick] if score @s ownedby matches 2 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,-150.0f,0f]}}
execute if score count discovercount matches 3 as @e[tag=3pick] if score @s ownedby matches 2 if score system arena matches 1 run tp @s 65.5 29.5 -5.5

execute if score count discovercount matches 3 as @e[tag=1pick] if score @s ownedby matches 1 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,-30.0f,0f]}}
execute if score count discovercount matches 3 as @e[tag=1pick] if score @s ownedby matches 1 if score system arena matches 1 run tp @s 65.5 29.5 -3.5
execute if score count discovercount matches 3 as @e[tag=2pick] if score @s ownedby matches 1 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,0.0f,0f]}}
execute if score count discovercount matches 3 as @e[tag=2pick] if score @s ownedby matches 1 if score system arena matches 1 run tp @s 67.5 29.5 -3.5
execute if score count discovercount matches 3 as @e[tag=3pick] if score @s ownedby matches 1 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,30.0f,0f]}}
execute if score count discovercount matches 3 as @e[tag=3pick] if score @s ownedby matches 1 if score system arena matches 1 run tp @s 69.5 29.5 -3.5


execute if score count discovercount matches 2 as @e[tag=1pick] if score @s ownedby matches 2 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,-165.0f,0f]}}
execute if score count discovercount matches 2 as @e[tag=1pick] if score @s ownedby matches 2 if score system arena matches 1 run tp @s 66.5 29.5 -5.5
execute if score count discovercount matches 2 as @e[tag=2pick] if score @s ownedby matches 2 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,165.0f,0f]}}
execute if score count discovercount matches 2 as @e[tag=2pick] if score @s ownedby matches 2 if score system arena matches 1 run tp @s 68.5 29.5 -5.5

execute if score count discovercount matches 2 as @e[tag=1pick] if score @s ownedby matches 1 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,15.0f,0f]}}
execute if score count discovercount matches 2 as @e[tag=1pick] if score @s ownedby matches 1 if score system arena matches 1 run tp @s 68.5 29.5 -3.5
execute if score count discovercount matches 2 as @e[tag=2pick] if score @s ownedby matches 1 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,-15.0f,0f]}}
execute if score count discovercount matches 2 as @e[tag=2pick] if score @s ownedby matches 1 if score system arena matches 1 run tp @s 66.5 29.5 -3.5

execute if score count discovercount matches 1 as @e[tag=1pick] if score @s ownedby matches 2 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,-180.0f,0f]}}
execute if score count discovercount matches 1 as @e[tag=1pick] if score @s ownedby matches 2 if score system arena matches 1 run tp @s 67.5 29.5 -5.5
execute if score count discovercount matches 1 as @e[tag=1pick] if score @s ownedby matches 1 if score system arena matches 1 run data merge entity @s {Rotation:[0f,0f],Pose:{Head:[0.0f,0.0f,0f]}}
execute if score count discovercount matches 1 as @e[tag=1pick] if score @s ownedby matches 1 if score system arena matches 1 run tp @s 67.5 29.5 -3.5


scoreboard players set @e[tag=discovered] cardorder 0


execute as @e[tag=discovered] if data entity @s HandItems[1].Count run data modify entity @s ArmorItems[3] set from entity @s HandItems[1]
execute as @e[tag=discovered] run data modify entity @s HandItems[1] set value {}



tag @e remove 1pick
tag @e remove 2pick
tag @e remove 3pick
scoreboard objectives remove discovercount