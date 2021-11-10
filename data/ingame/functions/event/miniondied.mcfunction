tag @s add 123
tag @s remove dying
scoreboard players set @s damage 0
scoreboard players set @s dying 0
scoreboard players add roundminiondied number 1
execute if score @s recover < @s reducedrecover run scoreboard players set @s recover 0
execute if score @s recover >= @s reducedrecover run scoreboard players operation @s[scores={recover=1..}] recover -= @s reducedrecover
scoreboard players set @s reducedrecover 0

execute as @e[tag=caster2] if score @s minioncode = @e[tag=123,limit=1] minioncode run kill @s

execute as @s[tag=revive] at @s run function ingame:minion/toughrevive
execute at @s run function ingame:minion/hpcheck
execute at @s run function ingame:minion/buffcheck
tag @s remove mute
tag @s remove casted2
tag @s remove casted2_pack0
tag @s remove casted2_pack1
tag @s remove casted2_pack2
tag @s remove casted2_pack3
tag @s remove casted2_pack4
tag @s remove casted2_pack5
tag @s remove casted2_pack6
tag @s remove casted2_pack7
tag @s remove casted2_pack8
tag @s remove revive
tag @s remove 123