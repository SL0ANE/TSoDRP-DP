tag @s add click
scoreboard objectives add repeatcount dummy
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["nbray"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=nbray] ^ ^ ^0.5 ~ ~
execute as @e[tag=nbray] at @s run function lobby:abilities/nightbreaker2



execute as @e[tag=hit] at @s run spreadplayers ~ ~ 2 2 false @a[tag=click]
execute at @s facing entity @e[tag=hit] feet run tp ~ ~ ~
execute as @e[tag=hit] at @s unless entity @a[tag=click,distance=..3] at @s rotated ~ 0 positioned ^ ^ ^-2 as @a[tag=click] facing entity @e[tag=hit] feet run tp ~ ~ ~
execute if entity @e[tag=hit] run scoreboard players set @s dash 148





execute unless entity @e[tag=hit] as @e[tag=!click,nbt={ActiveEffects:[{Id:25b}]}] store result score @s waiting run data get entity @s ActiveEffects[{Id:25b}].Duration
execute unless entity @e[tag=hit] as @e[scores={waiting=1..200},tag=!click,nbt={ActiveEffects:[{Id:25b}]}] run function lobby:abilities/nightbreaker5


execute if score @s dash matches 148 if entity @e[tag=hit] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无义的纳米刀\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"§f F键收刀入鞘或拔刀\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§6千里不留行：§f刀已出鞘时，F键收刀入鞘， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f对近期受到过伤害的单位再次造成伤害。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§d穿肠刀：§f刀已出鞘时，右键向前冲刺， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f对途经的单位造成伤害。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§a影袭：§f刀未出鞘时，潜行获得其他单位视野， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f右键点击目标闪现到其身边并挥刀。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§b疾风居合斩：§f刀未出鞘时，右键预备出击， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f1秒后向前冲刺，并击飞途经的单位。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§c剑舞：§f刀未出鞘时，潜行并对空处右键， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f闪现到被击飞的单位上方并造成8次伤害。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}",]},Tags:["dash","1stage"],CustomModelData:21} 1

execute if entity @e[tag=hit] run effect clear @s blindness



tag @e[tag=hit] remove hit
tag @s remove click