execute unless score @s number matches 1 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","1","summon"]}
execute unless score @s number matches 2 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","2","summon"]}
execute unless score @s number matches 3 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","3","summon"]}
execute unless score @s number matches 4 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","4","summon"]}
execute unless score @s number matches 5 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","5","summon"]}
execute unless score @s number matches 6 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","6","summon"]}
execute unless score @s number matches 7 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","7","summon"]}
execute unless score @s number matches 8 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","8","summon"]}
execute unless score @s number matches 9 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","9","summon"]}
execute unless score @s number matches 10 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","10","summon"]}
execute unless score @s number matches 11 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","11","summon"]}
execute unless score @s number matches 12 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","12","summon"]}
execute unless score @s number matches 100 run summon minecraft:area_effect_cloud ~ ~-5 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_picture","100","summon"]}

execute as @e[tag=sm_picture,tag=summon,limit=1,sort=random] run tag @s add pick
execute if entity @e[tag=pick,tag=1] run scoreboard players set @s number 1
execute if entity @e[tag=pick,tag=2] run scoreboard players set @s number 2
execute if entity @e[tag=pick,tag=3] run scoreboard players set @s number 3
execute if entity @e[tag=pick,tag=4] run scoreboard players set @s number 4
execute if entity @e[tag=pick,tag=5] run scoreboard players set @s number 5
execute if entity @e[tag=pick,tag=6] run scoreboard players set @s number 6
execute if entity @e[tag=pick,tag=7] run scoreboard players set @s number 7
execute if entity @e[tag=pick,tag=8] run scoreboard players set @s number 8
execute if entity @e[tag=pick,tag=9] run scoreboard players set @s number 9
execute if entity @e[tag=pick,tag=10] run scoreboard players set @s number 10
execute if entity @e[tag=pick,tag=11] run scoreboard players set @s number 11
execute if entity @e[tag=pick,tag=12] run scoreboard players set @s number 12
execute if entity @e[tag=pick,tag=100] run scoreboard players set @s number 100
data modify entity @s CustomName set from entity @e[tag=pick,limit=1] CustomName

kill @e[tag=summon]
tag @e remove summon