tag @s add 123
execute as @a[tag=playing] if score @s playernumber = @e[tag=123,limit=1] ownedby run tag @s add 234
scoreboard players operation @s playerid = @a[tag=234] playerid
tag @s remove 123
tag @a remove 234