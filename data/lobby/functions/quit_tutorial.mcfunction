scoreboard players add t_hold system 1
execute if score t_hold system matches 600 run scoreboard players reset t_pause system
execute if score t_hold system matches 600 run scoreboard players reset t_pause2 system
execute if score t_hold system matches 600 run scoreboard players reset t_pause3 system
execute if score t_hold system matches 600 run tag @a remove tutorial_hold
execute if score t_hold system matches 600 run tag @a remove tutorial
execute if score t_hold system matches 600 run scoreboard players reset tutorial system
execute if score t_hold system matches 600 run bossbar remove tutorial_p
execute if score t_hold system matches 600 run bossbar remove tutorial_0
execute if score t_hold system matches 600 run bossbar remove tutorial_1
execute if score t_hold system matches 600 run bossbar remove tutorial_2

execute if score t_hold system matches 600 run kill @e[tag=tutorial,type=!player]
execute if score t_hold system matches 600 run scoreboard players reset t_hold system