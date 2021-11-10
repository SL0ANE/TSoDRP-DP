tag @s add running
execute unless score r_card system matches 1 as @e[tag=chosen,tag=p_card,tag=limit_1] if score @s playerid = @a[tag=click,limit=1] playerid if score @s cardid = @e[tag=running,limit=1] cardid run tag @e[tag=running] add reach_limit_1
execute unless score r_card system matches 1 as @e[tag=chosen,tag=p_card,tag=limit_1] if score @s playerid = @a[tag=click,limit=1] playerid if score @s cardid = @e[tag=running,limit=1] cardid run tag @e[tag=running] add notpass
execute unless score r_card system matches 1 as @e[tag=chosen,tag=p_card,tag=!limit_1] if score @s playerid = @a[tag=click,limit=1] playerid if score @s cardid = @e[tag=running,limit=1] cardid run tag @s add count

execute unless score r_card system matches 1 store result score temp2 deckcount if entity @e[tag=count]
execute unless score r_card system matches 1 if score temp2 deckcount matches 2.. run tag @e[tag=running] add reach_limit_2
execute unless score r_card system matches 1 if score temp2 deckcount matches 2.. run tag @e[tag=running] add notpass
execute unless score r_card system matches 1 if entity @s[tag=banned] run tag @e[tag=running] add notpass
execute unless score r_card system matches 1 if entity @s[tag=banned] run tag @e[tag=running] add cardbanned
execute if score temp deckcount matches 16.. run tag @e[tag=running] add notpass
execute if score temp deckcount matches 16.. run tag @e[tag=running] add 16cards
execute if entity @e[tag=notpass] run title @a[tag=click] reset
execute if entity @e[tag=notpass] run title @a[tag=click] clear
execute if entity @e[tag=notpass] run title @a[tag=click] times 0 20 5


execute if entity @e[tag=reach_limit_1] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"携带数量达到上限","color":"yellow"},{"text":"!","color":"red"}]
execute if entity @e[tag=reach_limit_1] run title @a[tag=click] subtitle [{"text":"这张牌你只能携带一张","color":"yellow"}]

execute if entity @e[tag=reach_limit_2] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"携带数量达到上限","color":"yellow"},{"text":"!","color":"red"}]
execute if entity @e[tag=reach_limit_2] run title @a[tag=click] subtitle [{"text":"这张牌你只能携带两张","color":"yellow"}]

execute if entity @e[tag=16cards] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"请先删除一张牌","color":"yellow"},{"text":"!","color":"red"}]
execute if entity @e[tag=16cards] run title @a[tag=click] subtitle [{"text":"你至多可以携带十六张牌","color":"yellow"}]

execute if entity @e[tag=cardbanned] run title @a[tag=click] subtitle [{"text":"这张卡牌已被禁用","color":"yellow"}]
execute if entity @e[tag=cardbanned] run title @a[tag=click] title [{"text":"!","color":"red"},{"text":"无法选中","color":"yellow"},{"text":"!","color":"red"}]



execute unless entity @e[tag=notpass] run function ingame:createcard
scoreboard players reset temp deckcount
scoreboard players reset temp2 deckcount
tag @e[tag=summon2] add chosen
tag @s remove running
tag @e remove count
tag @e remove notpass
tag @e remove cardbanned
tag @e remove 16cards
tag @e remove reach_limit_1
tag @e remove reach_limit_2