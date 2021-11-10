tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target
execute if score @s waiting matches 14 run summon minecraft:evoker_fangs ~ ~ ~
execute if score @s waiting matches 14 run playsound minecraft:entity.evoker_fangs.attack block @a[tag=ingame] ~ ~ ~ 3 1 1
execute if score @s waiting matches 1 if score @s trueattack matches 1.. as @e[tag=target] run scoreboard players operation @s trueattack += @e[tag=123] trueattack
execute if score @s waiting matches 1 if score @s basic_attack matches 1.. as @e[tag=target] run scoreboard players operation @s basic_attack += @e[tag=123] basic_attack
execute if score @s waiting matches 1 if score @s hp matches 1.. as @e[tag=target] run scoreboard players operation @s hp += @e[tag=123] hp
execute if score @s waiting matches 1 if score @s hplimit matches 1.. as @e[tag=target] run scoreboard players operation @s hplimit += @e[tag=123] hplimit
execute if score @s waiting matches 1 if score @s basic_hp matches 1.. as @e[tag=target] run scoreboard players operation @s basic_hp += @e[tag=123] basic_hp
execute if score @s waiting matches 1 run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123