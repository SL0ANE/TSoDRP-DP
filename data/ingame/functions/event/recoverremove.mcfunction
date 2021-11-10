scoreboard players remove @s recover 1
function ingame:minion/hpcheck
execute if score @s recover matches 0 run scoreboard players set @s recovering 10
