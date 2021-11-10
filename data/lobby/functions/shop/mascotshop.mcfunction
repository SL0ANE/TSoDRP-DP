execute unless score @s shopping matches 1 run function lobby:shop/reset
execute unless score @s shopping matches 1 run scoreboard players set @s page 1
execute as @s[scores={page=1}] unless data entity @s EnderItems[{id:"minecraft:red_dye",Slot:0b,tag:{CustomModelData:1}}] run function lobby:shop/mascot/mijiale
execute as @s[scores={page=1}] unless data entity @s EnderItems[{id:"minecraft:red_dye",Slot:1b,tag:{CustomModelData:2}}] run function lobby:shop/mascot/luxifa
execute as @s[scores={page=1}] unless data entity @s EnderItems[{id:"minecraft:red_dye",Slot:2b,tag:{CustomModelData:3}}] run function lobby:shop/mascot/jiabailie
execute as @s[scores={page=1}] unless data entity @s EnderItems[{id:"minecraft:red_dye",Slot:3b,tag:{CustomModelData:4}}] run function lobby:shop/mascot/beierfenge











scoreboard players set @s shopping 1
execute if entity @s[tag=poor] run tellraw @s [{"text":"[英雄商店]  ","color":"#FF6347","bold":"true"},{"text":"余额不足！","color":"white"}]
execute if entity @s[tag=using] run tellraw @s [{"text":"[英雄商店]  ","color":"#FF6347","bold":"true"},{"text":"你正在使用该英雄！","color":"white"}]
execute if entity @s[tag=bought] run particle block ender_chest -177 18.5 66 0.3 0.3 0.3 0 40 force
execute if entity @s[tag=bought] run function lobby:shop/reset
execute if entity @s[tag=bought] run clear @s gold_ingot
execute if entity @s[tag=use] run function lobby:mascotchange
execute if entity @s[tag=use] run function lobby:shop/reset
tag @s remove bought
tag @s remove use
tag @s remove using
tag @s remove poor



