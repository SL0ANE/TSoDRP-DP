tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target
execute if score @s waiting matches 14.. store result score temp number run data get entity @s Pose.Head[0]
execute if score @s waiting matches 14.. run scoreboard players add temp number 10
execute if score @s waiting matches 14.. store result entity @s Pose.Head[0] float 1 run scoreboard players get temp number
execute if score @s waiting matches 14.. run scoreboard players reset temp number
execute if score @s waiting matches 14.. if entity @s[nbt={Pose:{Head:[89f]}}] run scoreboard players set @s waiting 7
execute if score @s waiting matches 27 run playsound minecraft:entity.player.attack.sweep block @a[tag=ingame] ~ ~ ~ 3 0.8 1
execute if score @s waiting matches 27 run particle minecraft:sweep_attack ~ ~1.5 ~ 0 0 0 0 1 force
execute if score @s[tag=stun] waiting matches 7 as @e[tag=target] run function ingame:minion/stunned
execute if score @s waiting matches 7 as @e[tag=target] run scoreboard players operation @s dmgtaken += @e[tag=123] dmgtaken
execute if score @s waiting matches 7 at @e[tag=target] run particle minecraft:effect ~ ~ ~ 0 0 0 0.5 20 force
execute if score @s waiting matches 7 at @e[tag=target] run particle block cobblestone ~ ~ ~ 0.2 0.2 0.2 0 30 force
execute if score @s waiting matches 7 run playsound minecraft:entity.zombie.attack_iron_door block @a[tag=ingame] ~ ~ ~ 2 0.1 1



execute if score @s waiting matches 2 run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123