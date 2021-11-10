playsound minecraft:entity.blaze.death block @a[tag=ingame] ~ ~ ~ 2 2 1

tag @s remove forceattack
tag @s remove forceatktarget







tag @s remove stun
scoreboard players set @s stun 0
scoreboard players set @s[scores={hp=1..}] hp 0
scoreboard players operation @s[scores={recover=-1}] recover = @s basic_recover


execute if entity @s[tag=tough] if score @s recover matches 1.. run tag @s add revive
tag @s remove tough
tag @s remove aggressive
tag @s remove keen
tag @s remove cunning
tag @s remove dodge
tag @s remove immune
tag @s remove prudent
tag @s remove strike
tag @s remove puzzle
tag @s remove block
tag @s remove chain
tag @s remove sweep
execute at @s run function ingame:minion/hpcheck
execute at @s run function ingame:minion/buffcheck


