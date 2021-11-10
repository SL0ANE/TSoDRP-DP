tag @s add checker
execute as @e[tag=t_card,scores={handorder=1..}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run tag @s add checking
execute store result score @s handcardcount if entity @e[tag=checking]
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6
execute as @e[tag=checking,scores={handorder=2}] unless entity @e[tag=checking,scores={handorder=1}] run scoreboard players set @s handorder 1
execute as @e[tag=checking,scores={handorder=3}] unless entity @e[tag=checking,scores={handorder=2}] run scoreboard players set @s handorder 2
execute as @e[tag=checking,scores={handorder=4}] unless entity @e[tag=checking,scores={handorder=3}] run scoreboard players set @s handorder 3
execute as @e[tag=checking,scores={handorder=5}] unless entity @e[tag=checking,scores={handorder=4}] run scoreboard players set @s handorder 4
execute as @e[tag=checking,scores={handorder=6}] unless entity @e[tag=checking,scores={handorder=5}] run scoreboard players set @s handorder 5
execute as @e[tag=checking,scores={handorder=7}] unless entity @e[tag=checking,scores={handorder=6}] run scoreboard players set @s handorder 6

execute as @e[tag=t_card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=checker,limit=1] ownedby run tag @s add checking2
execute store result score @s dcpilecount if entity @e[tag=checking2]
execute unless score @s dcpilecount matches 1.. run scoreboard players set @s dcpilecount 0

tag @e[tag=checking2] remove checking2
tag @e[tag=checking] remove checking
tag @s remove checker