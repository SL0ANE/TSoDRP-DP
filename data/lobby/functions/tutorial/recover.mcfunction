scoreboard players set @s reducedrecover 0
scoreboard players set @s recover -1
scoreboard players set @s attacked 0
scoreboard players operation @s hplimit = @s basic_hp
scoreboard players operation @s[scores={hp=..0}] hp = @s basic_hp
scoreboard players operation @s trueattack = @s basic_attack
execute as @s at @s run function ingame:minion/hpcheck
tag @s remove dead
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.1 0.1 0.1 0.2 100 force
playsound minecraft:block.conduit.activate block @a[tag=ingame] ~ ~ ~ 1 2 1
