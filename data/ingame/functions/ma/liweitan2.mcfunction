data merge entity @s {CustomName:"[{\"text\":\"深海恐惧·利维坦\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["button2","shenhaikongjvliweitan","character","minion","a_halo"],ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:53021}}]}
tag @s add 234
tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"利维坦","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发技能，","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"变身成为","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"深海恐惧·利维坦","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @e[tag=minion,tag=!234] if score @s ownedby = @e[tag=234,limit=1] ownedby run tag @s add 000
execute at @s rotated as @e[tag=000,limit=1] run tp ~ ~ ~
scoreboard players set @s basic_hp 7
scoreboard players set @s basic_attack 7
scoreboard players set @s hp 7
scoreboard players set @s trueattack 7
scoreboard players set @s truecost 1
scoreboard players set @s hplimit 7
scoreboard players set @s basic_recover 3
function ingame:minion/replace
function ingame:minion/hpcheck
particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0.05 300 force
playsound minecraft:entity.ender_dragon.flap block @a[tag=ingame] ~ ~ ~ 3 0.8 1
playsound minecraft:entity.zombie_villager.converted block @a[tag=ingame] ~ ~ ~ 3 1 1
tag @s remove 234
tag @e remove 000