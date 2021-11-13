execute if data entity @s Inventory[{tag:{Tags:["clear"]}}] run scoreboard players add @s money 10
clear @s minecraft:warped_fungus_on_a_stick{Tags:["clear"]} 1
execute if data entity @s Inventory[{tag:{Tags:["clear"]}}] run function gamedata:pickupmoney
