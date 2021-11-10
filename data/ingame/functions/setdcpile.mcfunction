tag @s add 555
execute as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=555,limit=1] ownedby run tag @s add 666
execute as @e[tag=card,tag=666,scores={dcpileorder=1}] at @e[tag=555] rotated ~ ~ run tp @s ~ ~0.0 ~
execute as @e[tag=card,tag=666,scores={dcpileorder=2..}] run function ingame:setdcpile2

execute as @e[tag=666] if data entity @s ArmorItems[3].Count run data modify entity @s HandItems[1] set from entity @s ArmorItems[3]
execute as @e[tag=666] run data modify entity @s ArmorItems[3] set value {}

tag @e remove 666
tag @s remove 555