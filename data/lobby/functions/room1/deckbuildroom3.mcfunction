tag @s add running

execute if entity @s[tag=minion_1,tag=room1,tag=display] run tag @e[tag=targetminion,scores={minionboard=1}] add target
execute if entity @s[tag=minion_2,tag=room1,tag=display] run tag @e[tag=targetminion,scores={minionboard=2}] add target
execute if entity @s[tag=minion_3,tag=room1,tag=display] run tag @e[tag=targetminion,scores={minionboard=3}] add target
execute if entity @s[tag=card1,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=1}] add target
execute if entity @s[tag=card2,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=2}] add target
execute if entity @s[tag=card3,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=3}] add target
execute if entity @s[tag=card4,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=4}] add target
execute if entity @s[tag=card5,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=5}] add target
execute if entity @s[tag=card6,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=6}] add target
execute if entity @s[tag=card7,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=7}] add target
execute if entity @s[tag=card8,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=8}] add target
execute if entity @s[tag=card9,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=9}] add target
execute if entity @s[tag=card10,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=10}] add target
execute if entity @s[tag=card11,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=11}] add target
execute if entity @s[tag=card12,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=12}] add target
execute if entity @s[tag=card13,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=13}] add target
execute if entity @s[tag=card14,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=14}] add target
execute if entity @s[tag=card15,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=15}] add target
execute if entity @s[tag=card16,tag=room1,tag=display] run tag @e[tag=targetcard,scores={cardboard=16}] add target

data modify storage minecraft:card_tags List set value []
execute if entity @e[tag=target,tag=limit_1] run data modify storage minecraft:card_tags List prepend value ""
execute if entity @e[tag=target,tag=spell] run data modify storage minecraft:card_tags List prepend value ""
execute if entity @e[tag=target,tag=environment] run data modify storage minecraft:card_tags List prepend value ""
execute if entity @e[tag=target,tag=trap] run data modify storage minecraft:card_tags List prepend value ""
execute if entity @e[tag=target,tag=equipment] run data modify storage minecraft:card_tags List prepend value "装备"
setblock -182 47 48 minecraft:oak_sign{Text1:"[{\"nbt\":\"List[0]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[1]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[2]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[3]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[4]\",\"storage\":\"minecraft:card_tags\"},{\"selector\":\"@e[tag=target]\",\"color\":\"#F0FFFF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Text2:"[{\"nbt\":\"List[0]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[1]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[2]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[3]\",\"storage\":\"minecraft:card_tags\"},{\"nbt\":\"List[4]\",\"storage\":\"minecraft:card_tags\"},{\"selector\":\"@e[tag=target]\",\"color\":\"#B0E2FF\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute if entity @s[tag=minion_1,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=minion_2,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=minion_3,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1

execute if entity @s[tag=card1,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card2,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card3,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card4,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card5,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card6,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card7,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card8,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card9,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card10,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card11,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card12,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card13,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card14,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
execute if entity @s[tag=card15,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text1
execute if entity @s[tag=card16,tag=room1,tag=display] run data modify entity @s CustomName set from block -182 47 48 Text2
setblock -182 47 48 air
tag @s remove running
tag @e remove target