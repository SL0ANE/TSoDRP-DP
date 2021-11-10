tag @s add running
execute unless score r_minion system matches 1 as @e[tag=chosen,tag=minion2] if score @s playerid = @a[tag=click,limit=1] playerid if score @s minionid = @e[tag=running,limit=1] minionid run tag @e[tag=running] add notpass
execute unless score r_minion system matches 1 as @e[tag=chosen,tag=minion2] if score @s playerid = @a[tag=click,limit=1] playerid if score @s minionid = @e[tag=running,limit=1] minionid run tag @e[tag=running] add sameminion
execute if score temp minioncount matches 3.. run tag @e[tag=running] add notpass
execute if score temp minioncount matches 3.. run tag @e[tag=running] add 3minions
execute unless score r_minion system matches 1 if entity @s[tag=banned] run tag @e[tag=running] add notpass
execute unless score r_minion system matches 1 if entity @s[tag=banned] run tag @e[tag=running] add cardbanned
execute if entity @e[tag=notpass] run title @a[tag=click] reset
execute if entity @e[tag=notpass] run title @a[tag=click] clear
execute if entity @e[tag=notpass] run title @a[tag=click] times 0 20 5


execute if entity @e[tag=sameminion] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"你已经携带了这个随从","color":"yellow"},{"text":"!","color":"red"}]
execute if entity @e[tag=sameminion] run title @a[tag=click] subtitle [{"text":"该模式下无法携带两个相同随从","color":"yellow"}]

execute if entity @e[tag=3minions] run title @a[tag=click] subtitle [{"text":"你至多可以携带三个随从","color":"yellow"}]
execute if entity @e[tag=3minions] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"请先删除一个随从","color":"yellow"},{"text":"!","color":"red"}]

execute if entity @e[tag=cardbanned] run title @a[tag=click] subtitle [{"text":"这个随从已被禁用","color":"yellow"}]
execute if entity @e[tag=cardbanned] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"无法选中","color":"yellow"},{"text":"!","color":"red"}]


execute unless entity @e[tag=notpass] run function lobby:createminion
scoreboard players reset temp minioncount
tag @e[tag=summon2] add chosen
tag @s remove running
tag @e remove notpass
tag @e remove 3minions
tag @e remove sameminion
tag @e remove cardbanned