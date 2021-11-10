tag @s add hit



execute as @e[tag=hit] at @s rotated ~ 0 positioned ^ ^ ^-2 as @a[tag=click] facing entity @e[tag=hit] feet run tp ~ ~6 ~
execute as @a[tag=click] at @s facing entity @e[tag=hit] eyes run tp ~ ~ ~


scoreboard players set @a[tag=click] dash 184
execute as @a[tag=click,scores={dash=184}] run playsound minecraft:entity.player.attack.sweep block @a ~ ~ ~ 1 0.1 1
execute as @a[tag=click,scores={dash=184}] run playsound minecraft:item.trident.riptide_3 block @a ~ ~ ~ 1 1.5 1
execute as @a[tag=click,scores={dash=184}] run playsound minecraft:item.trident.return block @a ~ ~ ~ 3 1 1
effect give @a[tag=click] slow_falling 2 12 true
effect clear @a[tag=click] blindness
execute as @a[tag=click,scores={dash=184}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无义的纳米刀\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"§f F键收刀入鞘或拔刀\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§6千里不留行：§f刀已出鞘时，F键收刀入鞘， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f对近期受到过伤害的单位再次造成伤害。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§d穿肠刀：§f刀已出鞘时，右键向前冲刺， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f对途经的单位造成伤害。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§a影袭：§f刀未出鞘时，潜行获得其他单位视野， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f右键点击目标闪现到其身边并挥刀。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§b疾风居合斩：§f刀未出鞘时，右键预备出击， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f1秒后向前冲刺，并击飞途经的单位。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§c剑舞：§f刀未出鞘时，潜行并对空处右键， \",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"§f闪现到被击飞的单位上方并造成8次伤害。\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}",]},Tags:["dash","1stage"],CustomModelData:12} 1


tag @s remove hit