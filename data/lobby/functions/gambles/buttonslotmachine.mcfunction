execute unless score slotmachine system matches 1.. run tag @s add pass
execute unless score @a[tag=click,limit=1] money matches 100.. run tag @s add poor


execute if entity @s[tag=pass,tag=!poor] run scoreboard players remove @a[tag=click] money 100
execute if entity @s[tag=pass,tag=!poor] run clear @a[tag=click] white_dye
execute if entity @s[tag=pass,tag=!poor] run clear @a[tag=click] gold_ingot
execute if entity @s[tag=pass,tag=!poor] run scoreboard players set slotmachine system 400
execute if entity @s[tag=pass,tag=!poor] run scoreboard players operation slotmachine playerid = @a[tag=click,limit=1] playerid
execute if entity @s[tag=pass,tag=poor] run tellraw @a[tag=click] [{"text":"[老虎机]  ","color":"#FF6347","bold":"true"},{"text":"余额不足！","color":"white"}]
execute if entity @s[tag=!pass] run tellraw @a[tag=click] [{"text":"[老虎机]  ","color":"#FF6347","bold":"true"},{"text":"暂时无法开始！","color":"white"}]
execute if entity @s[tag=pass,tag=!poor] run tellraw @a[tag=click] [{"text":"[老虎机]  ","color":"#FF6347","bold":"true"},{"text":"你玩了一次老虎机...","color":"white"}]

tag @s remove pass
tag @s remove poor