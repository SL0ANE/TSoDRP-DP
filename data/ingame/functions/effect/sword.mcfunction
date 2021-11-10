tag @s add 123

execute if entity @s[tag=mascot1] run tag @e[tag=mascot,scores={ownedby=1}] add target
execute if entity @s[tag=mascot2] run tag @e[tag=mascot,scores={ownedby=2}] add target
execute if entity @s[tag=minion1] run tag @e[tag=minion,scores={minioncode=1}] add target
execute if entity @s[tag=minion2] run tag @e[tag=minion,scores={minioncode=2}] add target
execute if entity @s[tag=minion3] run tag @e[tag=minion,scores={minioncode=3}] add target
execute if entity @s[tag=minion4] run tag @e[tag=minion,scores={minioncode=4}] add target
execute if entity @s[tag=minion5] run tag @e[tag=minion,scores={minioncode=5}] add target
execute if entity @s[tag=minion6] run tag @e[tag=minion,scores={minioncode=6}] add target
execute as @s at @s run tp @s ~ ~ ~ ~-13 ~
execute as @s at @s run particle minecraft:crit ^ ^ ^4.5 0.2 0.2 0.2 0 10 force
execute as @s at @s run particle minecraft:crit ^ ^ ^4 0.2 0.2 0.2 0 10 force
execute as @s at @s run tp @s ~ ~ ~ ~-13 ~
execute as @s at @s run particle minecraft:crit ^ ^ ^4.5 0.2 0.2 0.2 0 10 force
execute as @s at @s run particle minecraft:crit ^ ^ ^4 0.2 0.2 0.2 0 10 force
execute as @s at @s run tp @s ~ ~ ~ ~-13 ~
execute as @s at @s run particle minecraft:crit ^ ^ ^4.5 0.2 0.2 0.2 0 10 force
execute as @s at @s run particle minecraft:crit ^ ^ ^4 0.2 0.2 0.2 0 10 force

execute if score @s waiting matches 14 run playsound minecraft:entity.player.attack.sweep block @a[tag=ingame] ~ ~ ~ 2 1 1
execute if score @s waiting matches 14 run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s waiting matches 12 run playsound minecraft:entity.player.attack.sweep block @a[tag=ingame] ~ ~ ~ 2 1 1
execute if score @s waiting matches 12 run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s waiting matches 9 run playsound minecraft:entity.player.attack.sweep block @a[tag=ingame] ~ ~ ~ 2 1 1
execute if score @s waiting matches 9 run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s waiting matches 7 run playsound minecraft:entity.player.attack.sweep block @a[tag=ingame] ~ ~ ~ 2 1 1
execute if score @s waiting matches 7 run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s waiting matches 1 as @e[tag=target] at @s run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
execute if score @s waiting matches 1 run playsound minecraft:entity.iron_golem.damage block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s waiting matches 1 as @e[tag=target] run scoreboard players operation @s dmgtaken += @e[tag=123] dmgtaken
execute if score @s waiting matches 1 run kill @s
execute if score @s waiting matches 5.. run scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123