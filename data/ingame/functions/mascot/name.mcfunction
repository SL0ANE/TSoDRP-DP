tag @s add 478
execute if score @s ownedby matches 1 run tag @e[tag=name,tag=ownedby1] add 924
execute if score @s ownedby matches 2 run tag @e[tag=name,tag=ownedby2] add 924

setblock 2 0 0 minecraft:oak_sign{Text1:"[{\"selector\":\"@a[scores={playernumber=1}]\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"selector\":\"@a[scores={playernumber=2}]\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute if score @s ownedby matches 1 run data modify entity @e[tag=924,limit=1] CustomName set from block 2 0 0 Text1
execute if score @s ownedby matches 2 run data modify entity @e[tag=924,limit=1] CustomName set from block 2 0 0 Text2
data modify entity @s[scores={ownedby=1}] CustomName set from block 2 0 0 Text1
data modify entity @s[scores={ownedby=2}] CustomName set from block 2 0 0 Text2
data merge entity @s {CustomNameVisible:0b}

setblock 2 0 0 air
tag @s remove 478
tag @e remove 924
