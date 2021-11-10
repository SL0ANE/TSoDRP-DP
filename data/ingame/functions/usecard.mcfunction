execute as @a[tag=playing,tag=round,scores={rightclick=1..},nbt={SelectedItem:{tag:{Tags:["card"]}}}] at @s run function card:detectcard


execute as @e[tag=minion,scores={addbuff=1..}] run function ingame:applybuff
scoreboard players set @e[scores={addbuff=1..}] addbuff 0