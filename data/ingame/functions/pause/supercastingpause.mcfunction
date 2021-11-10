scoreboard players set supercasting pause 0
execute if score system waiting matches 1.. run scoreboard players add supercasting pause 1
execute if entity @e[tag=card,tag=discovered,tag=!unpicked,tag=!picked] run scoreboard players add supercasting pause 1
execute if entity @e[scores={stunremoving=1..}] run scoreboard players add supercasting pause 1
execute if entity @e[scores={rcvremoving=1..}] run scoreboard players add supercasting pause 1
