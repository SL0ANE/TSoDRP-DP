execute as @a[tag=!ingame] if score @s playerid = slotmachine playerid run tag @s add money_get
execute unless entity @a[tag=money_get] as @e[tag=reportholder] if score @s playerid = slotmachine playerid run tag @s add money_get2
execute as @a[tag=money_get] if score slotmachine system matches 160 run tellraw @s [{"text":"[老虎机]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"500","color":"#98FB98","bold":false,"italic":false},{"text":"金币已到账！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=money_get] if score slotmachine system matches 160 run advancement grant @s only minecraft:daily/double_1
execute as @a[tag=money_get] if score slotmachine system matches 140 run tellraw @s [{"text":"[老虎机]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"17000","color":"#98FB98","bold":false,"italic":false},{"text":"金币已到账！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=money_get] if score slotmachine system matches 140 run advancement grant @s only minecraft:daily/triple_1
execute as @a[tag=money_get] if score slotmachine system matches 110 run tellraw @s [{"text":"[老虎机]  ","color":"#FFF68F","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"225000","color":"#98FB98","bold":false,"italic":false},{"text":"金币已到账！","color":"white","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=money_get] if score slotmachine system matches 110 run advancement grant @s only minecraft:daily/jackpot

execute as @a[tag=money_get] if score slotmachine system matches 151..160 run scoreboard players add @s money 50
execute as @a[tag=money_get] if score slotmachine system matches 121..140 run scoreboard players add @s money 850
execute as @a[tag=money_get] if score slotmachine system matches 61..110 run scoreboard players add @s money 4500
execute as @e[tag=money_get2] if score slotmachine system matches 151..160 run scoreboard players remove @s storedbet 50
execute as @e[tag=money_get2] if score slotmachine system matches 121..140 run scoreboard players remove @s storedbet 850
execute as @e[tag=money_get2] if score slotmachine system matches 61..110 run scoreboard players remove @s storedbet 4500

execute as @a[tag=money_get] if score slotmachine system matches 151..160 run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.4 0
execute as @a[tag=money_get] if score slotmachine system matches 121..140 run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1 0
execute as @a[tag=money_get] if score slotmachine system matches 61..110 run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 0.6 0

tag @e remove money_get2
tag @e remove money_get