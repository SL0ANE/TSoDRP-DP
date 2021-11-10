execute unless score @s money matches 1.. as @e[tag=123,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor"]}}}] run tag @s add takeback
execute if score @s money matches 1..9 as @e[tag=123,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor"]},Count:1b}}] run tag @s add takeback2
execute if score @s money matches 1..9 as @e[tag=123,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor"]},Count:10b}}] run tag @s add takeback2


execute if score @s money matches 10.. as @e[tag=123,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor"]},Count:1b}}] run scoreboard players set @s money 10
execute if score @s money matches 10.. as @e[tag=123,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor"]},Count:1b}}] run data merge entity @s {Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor","lobby","clear"],CustomModelData:2},Count:1b}}
execute if score @s money matches 10.. as @e[tag=123,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["cursor"]},Count:1b}}] run scoreboard players remove @a[tag=thrower] money 10

execute if entity @e[tag=takeback] run tellraw @s [{"text":"[我的账户]  ","color":"#FF6347","bold":"true"},{"text":"余额不足！","color":"white"}]
execute if entity @e[tag=takeback2] run tellraw @s [{"text":"[我的账户]  ","color":"#FF6347","bold":"true"},{"text":"余额不足10金币！ （请丢弃至少10金币）","color":"white"}]
kill @e[tag=takeback]
kill @e[tag=takeback2]
tag @e remove takeback
tag @e remove takeback2

execute as @e[tag=123] run data merge entity @s {PickupDelay:32767}