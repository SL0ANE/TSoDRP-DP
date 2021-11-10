tag @s add 123
execute as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add 234
execute if entity @e[tag=234,scores={storedbet=..-1}] run function gamedata:storedbet

setblock 23 4 12 minecraft:oak_sign{Text1:"[{\"selector\":\"@e[tag=123]\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute as @e[tag=234,tag=reportholder] if entity @e[tag=123] run data modify entity @s CustomName set from block 23 4 12 Text1
setblock 23 4 12 air

tag @s remove 123
tag @e remove 234