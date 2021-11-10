playsound minecraft:ui.stonecutter.take_result block @s ~ ~ ~ 3 1.3 1
execute as @s[nbt={SelectedItem:{tag:{Tags:["1cost"]}}}] at @s run execute if score @s cost matches 1.. run tag @s add useallow
execute as @s[nbt={SelectedItem:{tag:{Tags:["1cost"]}}}] at @s run execute unless score @s cost matches 1.. run tag @s add usedeny
execute as @s[nbt={SelectedItem:{tag:{Tags:["2cost"]}}}] at @s run execute if score @s cost matches 2.. run tag @s add useallow
execute as @s[nbt={SelectedItem:{tag:{Tags:["2cost"]}}}] at @s run execute unless score @s cost matches 2.. run tag @s add usedeny
execute as @s[nbt={SelectedItem:{tag:{Tags:["3cost"]}}}] at @s run execute if score @s cost matches 3.. run tag @s add useallow
execute as @s[nbt={SelectedItem:{tag:{Tags:["3cost"]}}}] at @s run execute unless score @s cost matches 3.. run tag @s add usedeny
execute as @s[tag=useallow] at @s run function card:detectcard2
execute as @s[tag=usedeny] at @s run playsound minecraft:block.anvil.land block @s ~ ~ ~ 3 2 1 
tag @s remove useallow
tag @s remove usedeny