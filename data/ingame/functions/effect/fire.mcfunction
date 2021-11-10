tag @s add 123

execute if entity @s[tag=mascot1] run tag @e[tag=mascot,scores={ownedby=1}] add target
execute if entity @s[tag=mascot2] run tag @e[tag=mascot,scores={ownedby=2}] add target
execute if entity @s[tag=minion1] run tag @e[tag=minion,scores={minioncode=1}] add target
execute if entity @s[tag=minion2] run tag @e[tag=minion,scores={minioncode=2}] add target
execute if entity @s[tag=minion3] run tag @e[tag=minion,scores={minioncode=3}] add target
execute if entity @s[tag=minion4] run tag @e[tag=minion,scores={minioncode=4}] add target
execute if entity @s[tag=minion5] run tag @e[tag=minion,scores={minioncode=5}] add target
execute if entity @s[tag=minion6] run tag @e[tag=minion,scores={minioncode=6}] add target

execute if score @s waiting matches 14 run particle minecraft:small_flame ~ ~ ~ 1 0.2 1 0.03 50 force
execute if score @s waiting matches 14 run particle minecraft:dust_color_transition 0 0 0 1 1 0 0 ~ ~ ~ 1 0.2 1 0 200 force
execute if score @s waiting matches 14 run playsound minecraft:entity.blaze.shoot block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s waiting matches 9 run particle minecraft:small_flame ~ ~ ~ 1 0.2 1 0.03 50 force
execute if score @s waiting matches 9 run particle minecraft:dust_color_transition 0 0 0 1 1 0 0 ~ ~ ~ 1 0.2 1 0 200 force
execute if score @s waiting matches 9 run playsound minecraft:entity.blaze.shoot block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s waiting matches 6 run particle minecraft:small_flame ~ ~ ~ 1 0.2 1 0.03 50 force
execute if score @s waiting matches 6 run particle minecraft:dust_color_transition 0 0 0 1 1 0 0 ~ ~ ~ 1 0.2 1 0 200 force
execute if score @s waiting matches 6 run playsound minecraft:entity.blaze.shoot block @a[tag=ingame] ~ ~ ~ 3 0.1 1

execute if score @s waiting matches 3 as @e[tag=target] run scoreboard players operation @s dmgtaken += @e[tag=123] dmgtaken
execute if score @s waiting matches 1 run kill @s


scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123