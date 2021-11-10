execute if score @s cardcasting matches 38 run tag @s add 123





execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[土豆战争]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"令所有随从随机攻击其他随从。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s cardcasting matches 38 as @e[tag=minion,tag=!dying,scores={recover=-1,minioncode=1}] run tag @s add targetminion
execute if score @s cardcasting matches 38 if entity @e[tag=targetminion] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1,hp=1..},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 38 if entity @e[tag=targetminion] unless entity @e[tag=targetminion2] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 38 if entity @e[tag=targetminion2] as @e[tag=minion,tag=targetminion] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 38 as @e[tag=targetminion2] run tag @s add forceatktarget
execute if score @s cardcasting matches 38 unless entity @e[tag=targetminion2] run scoreboard players set @s cardcasting 35

execute if score @s cardcasting matches 35 as @e[tag=minion,tag=!dying,scores={recover=-1,minioncode=6}] run tag @s add targetminion
execute if score @s cardcasting matches 35 if entity @e[tag=targetminion] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1,hp=1..},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 35 if entity @e[tag=targetminion] unless entity @e[tag=targetminion2] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 35 if entity @e[tag=targetminion2] as @e[tag=minion,tag=targetminion] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 35 as @e[tag=targetminion2] run tag @s add forceatktarget
execute if score @s cardcasting matches 35 unless entity @e[tag=targetminion2] run scoreboard players set @s cardcasting 32

execute if score @s cardcasting matches 32 as @e[tag=minion,tag=!dying,scores={recover=-1,minioncode=2}] run tag @s add targetminion
execute if score @s cardcasting matches 32 if entity @e[tag=targetminion] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1,hp=1..},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 32 if entity @e[tag=targetminion] unless entity @e[tag=targetminion2] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 32 if entity @e[tag=targetminion2] as @e[tag=minion,tag=targetminion] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 32 as @e[tag=targetminion2] run tag @s add forceatktarget
execute if score @s cardcasting matches 32 unless entity @e[tag=targetminion2] run scoreboard players set @s cardcasting 29

execute if score @s cardcasting matches 29 as @e[tag=minion,tag=!dying,scores={recover=-1,minioncode=5}] run tag @s add targetminion
execute if score @s cardcasting matches 29 if entity @e[tag=targetminion] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1,hp=1..},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 29 if entity @e[tag=targetminion] unless entity @e[tag=targetminion2] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 29 if entity @e[tag=targetminion2] as @e[tag=minion,tag=targetminion] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 29 as @e[tag=targetminion2] run tag @s add forceatktarget
execute if score @s cardcasting matches 29 unless entity @e[tag=targetminion2] run scoreboard players set @s cardcasting 26

execute if score @s cardcasting matches 26 as @e[tag=minion,tag=!dying,scores={recover=-1,minioncode=3}] run tag @s add targetminion
execute if score @s cardcasting matches 26 if entity @e[tag=targetminion] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1,hp=1..},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 26 if entity @e[tag=targetminion] unless entity @e[tag=targetminion2] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 26 if entity @e[tag=targetminion2] as @e[tag=minion,tag=targetminion] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 26 as @e[tag=targetminion2] run tag @s add forceatktarget
execute if score @s cardcasting matches 26 unless entity @e[tag=targetminion2] run scoreboard players set @s cardcasting 23

execute if score @s cardcasting matches 23 as @e[tag=minion,tag=!dying,scores={recover=-1,minioncode=4}] run tag @s add targetminion
execute if score @s cardcasting matches 23 if entity @e[tag=targetminion] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1,hp=1..},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 23 if entity @e[tag=targetminion] unless entity @e[tag=targetminion2] as @e[tag=minion,tag=!targetminion,tag=!dying,scores={recover=-1},limit=1,sort=random] run tag @s add targetminion2
execute if score @s cardcasting matches 23 if entity @e[tag=targetminion2] as @e[tag=minion,tag=targetminion] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 23 as @e[tag=targetminion2] run tag @s add forceatktarget
execute if score @s cardcasting matches 23 unless entity @e[tag=targetminion2] run scoreboard players set @s cardcasting 20

execute if score @s cardcasting matches 20 run scoreboard players set @s cardcasting 1



tag @e remove targetminion
tag @e remove targetminion2
tag @s remove 123