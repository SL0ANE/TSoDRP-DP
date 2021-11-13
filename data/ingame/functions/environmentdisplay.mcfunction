execute if data entity @s HandItems[1].Count run data modify entity @s ArmorItems[3] set from entity @s HandItems[1]
data modify entity @s HandItems[1] set value {}
execute if score system arena matches 1 run tp @s[scores={ownedby=1}] 70 29 -3
execute if score system arena matches 1 run data merge entity @s[scores={ownedby=1}] {Rotation:[0f,0f],Pose:{Head:[0.0f,135.0f,0.0f]}}
execute if score system arena matches 1 run tp @s[scores={ownedby=2}] 64 29 -7
execute if score system arena matches 1 run data merge entity @s[scores={ownedby=2}] {Rotation:[0f,0f],Pose:{Head:[0.0f,-45.0f,0.0f]}}