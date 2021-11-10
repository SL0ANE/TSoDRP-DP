tag @s add 135
tag @s[tag=!counted] add count

execute as @e[tag=targetcards,tag=!135] if score @s cardid = @e[tag=135,tag=count,limit=1] cardid run tag @s add counted


tag @s remove 135