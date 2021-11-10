tag @s add 123
execute at @s positioned ^ ^ ^2 run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force

execute at @s positioned ^ ^ ^2 as @a[tag=!123,distance=..3.5] at @s run playsound minecraft:entity.blaze.hurt block @a ~ ~ ~ 1 0.7 1
execute at @s positioned ^ ^ ^2 as @a[distance=..3.5,tag=!123] run scoreboard players add @s dmgtaking 15
execute if score @s dash matches 183 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 3
execute if score @s dash matches 180 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 7
execute if score @s dash matches 177 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 11
execute if score @s dash matches 174 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 15
execute if score @s dash matches 172 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 19
execute if score @s dash matches 168 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 23
execute if score @s dash matches 164 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 27
execute if score @s dash matches 158 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 31
execute if score @s dash matches 146 at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players add @s combo 2

execute at @s positioned ^ ^ ^2 if entity @a[distance=..3.5,tag=!123] run scoreboard players set @s combotime 30
execute at @s positioned ^ ^ ^2 as @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s dmgtaking 15

execute at @s positioned ^ ^ ^2 as @e[type=!player,type=!armor_stand,distance=..3.5] at @s run playsound minecraft:entity.blaze.hurt block @a ~ ~ ~ 1 0.7 1

execute if score @s dash matches 183 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 3
execute if score @s dash matches 180 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 7
execute if score @s dash matches 177 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 11
execute if score @s dash matches 174 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 15
execute if score @s dash matches 172 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 19
execute if score @s dash matches 168 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 23
execute if score @s dash matches 164 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 27
execute if score @s dash matches 158 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 31
execute if score @s dash matches 146 at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players add @s combo 2
execute at @s positioned ^ ^ ^2 if entity @e[type=!player,type=!armor_stand,distance=..3.5] run scoreboard players set @s combotime 30
execute at @s positioned ^ ^ ^2 as @e[type=!player,type=!armor_stand,distance=..3.5] at @s
execute at @s positioned ^ ^ ^2 as @e[type=!player,type=!armor_stand,distance=..3.5] run effect give @s instant_damage 1 0 true
tag @e remove 123