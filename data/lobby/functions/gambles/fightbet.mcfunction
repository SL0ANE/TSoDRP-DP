execute unless score @a[tag=click,limit=1] money matches 100.. run tag @s add poor
execute as @e[tag=reportholder] if score @s playerid = @a[tag=click,limit=1] playerid if score @s bet matches 1.. run tag @s add onbet
execute as @e[tag=reportholder] if score @s playerid = @a[tag=click,limit=1] playerid if score @s bet matches ..-1 run tag @s add onbet
execute unless entity @e[tag=onbet] unless entity @s[tag=poor] unless entity @e[type=blaze] unless entity @e[type=snow_golem] run tag @s add pass
execute if entity @s[tag=pass] if entity @s[tag=blaze] as @e[tag=reportholder] if score @s playerid = @a[tag=click,limit=1] playerid run scoreboard players add @s bet 1
execute if entity @s[tag=pass] if entity @s[tag=snow_golem] as @e[tag=reportholder] if score @s playerid = @a[tag=click,limit=1] playerid run scoreboard players set @s bet 2
execute if entity @s[tag=pass] run summon blaze -145 18 105
execute if entity @s[tag=pass] run summon blaze -147 18 105
execute if entity @s[tag=pass] run summon blaze -149 18 105
execute if entity @s[tag=pass] run summon blaze -151 18 105
execute if entity @s[tag=pass] run summon blaze -153 18 105
execute if entity @s[tag=pass] run summon snow_golem -146 18 114 {AbsorptionAmount:2f,Passengers:[{id:snow_golem}]}
execute if entity @s[tag=pass] run summon snow_golem -148 18 114 {AbsorptionAmount:2f,Passengers:[{id:snow_golem,Passengers:[{id:snow_golem}]}]}
execute if entity @s[tag=pass] run summon snow_golem -150 18 114 {AbsorptionAmount:2f,Passengers:[{id:snow_golem,Passengers:[{id:snow_golem}]}]}
execute if entity @s[tag=pass] run summon snow_golem -152 18 114 {AbsorptionAmount:2f,Passengers:[{id:snow_golem}]}
execute if entity @s[tag=pass] run scoreboard players remove @a[tag=click] money 100
execute if entity @s[tag=pass] run clear @a[tag=click] gold_ingot
execute if entity @s[tag=pass] run scoreboard players set fightbet system 1
execute if entity @s[tag=poor] run tellraw @a[tag=click] [{"text":"[冰火大战]  ","color":"#FF6347","bold":"true"},{"text":"余额不足！","color":"white"}]
execute if entity @s[tag=!pass,tag=!poor] run tellraw @a[tag=click] [{"text":"[冰火大战]  ","color":"#FF6347","bold":"true"},{"text":"暂时无法开始！","color":"white"}]
execute if entity @s[tag=pass,tag=blaze] run tellraw @a[tag=click] [{"text":"[冰火大战]  ","color":"#FF6347","bold":"true"},{"text":"你猜烈焰人会赢...","color":"white"}]
execute if entity @s[tag=pass,tag=snow_golem] run tellraw @a[tag=click] [{"text":"[冰火大战]  ","color":"#FF6347","bold":"true"},{"text":"你猜雪傀儡会赢...","color":"white"}]
execute if entity @s[tag=pass] run bossbar add fightbet {"text":"冰火大战","bold":"true","color":"#FF6347"}
execute if entity @s[tag=pass] run bossbar set minecraft:fightbet players @a[tag=click]
execute if entity @s[tag=pass] run bossbar set minecraft:fightbet color pink
execute if entity @s[tag=pass] run bossbar set minecraft:fightbet max 800
execute if entity @s[tag=pass] run bossbar set minecraft:fightbet value 400



tag @e remove onbet
tag @s remove pass
tag @s remove poor