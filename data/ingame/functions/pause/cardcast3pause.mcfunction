scoreboard players set cardcast3 pause 0
execute if score system waiting matches 1.. run scoreboard players add cardcast3 pause 1

execute if entity @e[tag=card,tag=discovered,tag=!unpicked,tag=!picked] run scoreboard players add cardcast3 pause 1
execute if entity @e[scores={stunremoving=1..}] run scoreboard players add cardcast3 pause 1
execute if entity @e[scores={rcvremoving=1..}] run scoreboard players add cardcast3 pause 1
execute if entity @e[scores={supercasting=1..}] run scoreboard players add cardcast3 pause 1
