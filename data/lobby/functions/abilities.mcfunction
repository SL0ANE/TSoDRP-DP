
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{Tags:["dash"]}}}] unless score @s dash matches 44.. at @s run function lobby:abilities/dash
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["dash"]}}]}] unless score @s dash matches 1.. run function lobby:abilities/laido


execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["dash"]}}]}] at @s run function lobby:abilities/laido3

execute as @a[gamemode=!spectator,scores={sneak=1..},nbt={SelectedItem:{tag:{CustomModelData:16,Tags:["dash","2stage"]}}}] unless score @s dash matches 1.. run function lobby:abilities/nightbreaker4
scoreboard players remove @a[scores={combotime=1..}] combotime 1
scoreboard players operation 频道历史最高 combodisplay = system combo
execute as @a[scores={combo=1..}] at @s run function lobby:abilities/combodisplay
execute as @a[scores={combotime=1}] at @s run function lobby:abilities/comboset
scoreboard players remove @e[scores={dmgtaking=1..}] dmgtaking 1
scoreboard players remove @e[scores={healing=1..}] healing 1
execute as @e[scores={dmgtaking=1..100}] at @s run particle minecraft:item redstone ~ ~1.8 ~ 0.15 0.15 0.15 0 2 force @a[distance=0.1..]
execute as @e[scores={dmgtaking=100..}] at @s run particle minecraft:item redstone_block ~ ~1.8 ~ 0.15 0.15 0.15 0 20 force @a[distance=0.1..]
execute as @e[tag=airborne,scores={healing=1}] at @s run function lobby:abilities/airborne
execute as @a[scores={dash=1..200},nbt={SelectedItem:{tag:{Tags:["dash"]}}}] at @s run function lobby:abilities/dash2
execute as @a[scores={dash=1..40},nbt={SelectedItem:{tag:{Tags:["dash"]}}}] at @s run function lobby:abilities/laido2
scoreboard players remove @a[scores={dash=1..}] dash 1
execute unless entity @a[nbt={ActiveEffects:[{Id:15b}]}] run effect clear @e[type=!area_effect_cloud,type=!armor_stand,nbt={ActiveEffects:[{Id:24b}]}] glowing
execute as @a[scores={sneak=0}] run effect clear @s blindness
execute as @a[scores={dash=..55}] run effect clear @s slowness
