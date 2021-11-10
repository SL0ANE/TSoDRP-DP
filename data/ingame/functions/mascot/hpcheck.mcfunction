tag @s add 478
execute if score @s ownedby matches 1 run tag @e[tag=data,tag=ownedby1] add 924
execute if score @s ownedby matches 2 run tag @e[tag=data,tag=ownedby2] add 924



setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"score\":{\"objective\":\"hp\",\"name\":\"@e[tag=478]\"},\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"hplimit\",\"name\":\"@e[tag=478]\"},\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"❤\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"score\":{\"objective\":\"hp\",\"name\":\"@e[tag=478]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"hplimit\",\"name\":\"@e[tag=478]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"❤\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text3:"[{\"score\":{\"objective\":\"hp\",\"name\":\"@e[tag=478]\"},\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"/\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"hplimit\",\"name\":\"@e[tag=478]\"},\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"❤\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text4:"[]"} destroy


execute if score @s hp > @s hplimit run data modify entity @e[tag=924,limit=1] CustomName set from block 1 0 0 Text3
execute if score @s hp = @s hplimit run data modify entity @e[tag=924,limit=1] CustomName set from block 1 0 0 Text2
execute if score @s hp < @s hplimit run data modify entity @e[tag=924,limit=1] CustomName set from block 1 0 0 Text1

tag @s remove 478
tag @e remove 924
setblock 1 0 0 air