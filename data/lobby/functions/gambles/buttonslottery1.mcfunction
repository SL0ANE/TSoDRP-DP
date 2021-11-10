execute unless score lottery system matches 1.. run tag @s add pass
execute unless score @a[tag=click,limit=1] money matches 1000.. run tag @s add poor


execute if entity @s[tag=pass,tag=!poor] run scoreboard players remove @a[tag=click] money 1000
execute if entity @s[tag=pass,tag=!poor] run clear @a[tag=click] white_dye

execute if entity @s[tag=pass,tag=!poor] run scoreboard players set lottery system 25
execute if entity @s[tag=pass,tag=!poor] run scoreboard players operation lottery playerid = @a[tag=click,limit=1] playerid
execute if entity @s[tag=pass,tag=poor] run tellraw @a[tag=click] [{"text":"[牌手奖池]  ","color":"#FF6347","bold":"true"},{"text":"余额不足！","color":"white"}]
execute if entity @s[tag=!pass] run tellraw @a[tag=click] [{"text":"[牌手奖池]  ","color":"#FF6347","bold":"true"},{"text":"暂时无法开始！","color":"white"}]
execute if entity @s[tag=pass,tag=!poor] run tellraw @a[tag=click] [{"text":"[牌手奖池]  ","color":"#FF6347","bold":"true"},{"text":"你进行了一次牌手皮肤抽奖...","color":"white"}]

tag @s remove pass
tag @s remove poor