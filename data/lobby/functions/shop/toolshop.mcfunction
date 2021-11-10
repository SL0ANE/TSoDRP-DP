execute unless score @s shopping matches 2 run function lobby:shop/reset
execute unless score @s shopping matches 2 run scoreboard players set @s page 1
execute as @s[scores={page=1}] unless data entity @s EnderItems[{id:"minecraft:cooked_porkchop",Slot:0b}] run function lobby:shop/tool/eraser
execute as @s[scores={page=1}] unless data entity @s EnderItems[{id:"minecraft:enchanted_golden_apple",Slot:1b}] run function lobby:shop/tool/go_first











scoreboard players set @s shopping 2
execute if entity @s[tag=poor] run tellraw @s [{"text":"[道具商店]  ","color":"#FF6347","bold":"true"},{"text":"余额不足！","color":"white"}]
execute if entity @s[tag=bought] run particle block ender_chest -177 18.5 66 0.3 0.3 0.3 0 40 force
execute if entity @s[tag=bought] run function lobby:shop/reset
execute if entity @s[tag=bought] run clear @s gold_ingot
tag @s remove bought
tag @s remove poor



