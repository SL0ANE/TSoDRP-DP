execute as @s run scoreboard players set @s honor 1
#Untitled
execute as @s[scores={gameplayed=3..,winrate=..2999}] run scoreboard players set @s honor 2
execute as @s[scores={gameplayed=3..,scores=..7}] run scoreboard players set @s honor 2
#Rookie
execute as @s[scores={gameplayed=3..,winrate=3000..}] run scoreboard players set @s honor 3
execute as @s[scores={gameplayed=3..,scores=8..}] run scoreboard players set @s honor 3
#Apprentice
execute as @s[scores={gameplayed=3..,winrate=4000..}] run scoreboard players set @s honor 4
execute as @s[scores={gameplayed=3..,scores=16..}] run scoreboard players set @s honor 4
#Elite
execute as @s[scores={gameplayed=7..,winrate=5000..}] run scoreboard players set @s honor 5
execute as @s[scores={gameplayed=7..,winrate=4500..,scores=30..}] run scoreboard players set @s honor 5
execute as @s[scores={gameplayed=7..,scores=60..}] run scoreboard players set @s honor 5
#Expert
execute as @s[scores={gameplayed=8..,winrate=6000..}] run scoreboard players set @s honor 6
execute as @s[scores={gameplayed=8..,winrate=5000..,scores=55..}] run scoreboard players set @s honor 6
execute as @s[scores={gameplayed=8..,scores=99..}] run scoreboard players set @s honor 6
#Master
execute as @s[scores={gameplayed=9..,winrate=7000..}] run scoreboard players set @s honor 7
execute as @s[scores={gameplayed=9..,winrate=5500..,scores=80..}] run scoreboard players set @s honor 7
execute as @s[scores={gameplayed=9..,winrate=5000..,scores=128..}] run scoreboard players set @s honor 7
#Supreme
execute as @s[scores={gameplayed=10..,winrate=8000..}] run scoreboard players set @s honor 8
execute as @s[scores={gameplayed=10..,winrate=6000..,scores=145..}] run scoreboard players set @s honor 8
execute as @s[scores={gameplayed=10..,winrate=5000..,scores=203..}] run scoreboard players set @s honor 8
#Legend
execute as @s[scores={gameplayed=10..,winrate=9000..}] run scoreboard players set @s honor 9
execute as @s[scores={gameplayed=15..,winrate=7000..,scores=225..}] run scoreboard players set @s honor 9
execute as @s[scores={gameplayed=20..,winrate=5000..,scores=270..}] run scoreboard players set @s honor 9
#God
team join Untitled @s[scores={honor=1}]
team join Rookie @s[scores={honor=2}]
team join Apprentice @s[scores={honor=3}]
team join Elite @s[scores={honor=4}]
team join Expert @s[scores={honor=5}]
team join Master @s[scores={honor=6}]
team join Supreme @s[scores={honor=7}]
team join Legend @s[scores={honor=8}]
team join God @s[scores={honor=9}]