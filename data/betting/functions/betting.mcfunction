
execute if score betclock gamecd matches 1.. run scoreboard players remove betclock gamecd 1

execute as @a[tag=spectating] at @s run function betting:predict
execute as @a[nbt={SelectedItem:{tag:{Tags:["bet"]}}},scores={rightclick=1..}] at @s run function betting:bet