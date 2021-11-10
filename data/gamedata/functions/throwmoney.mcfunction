tag @s add thrower
clear @s white_dye
scoreboard objectives add uuid dummy
execute store result score @s uuid run data get entity @s UUID[0]
scoreboard players reset @s throwmoney
execute as @e[type=item,tag=!money,nbt={Item:{tag:{Tags:["cursor"]}}}] run function gamedata:throwmoney2

scoreboard objectives remove uuid
tag @s remove thrower