scoreboard players set recoverremove pause 0
execute if score system waiting matches 1.. run scoreboard players add recoverremove pause 1
execute if entity @e[tag=card,tag=discovered,tag=!unpicked,tag=!picked] run scoreboard players add recoverremove pause 1
