tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"—————————————[卡牌信息]—————————————","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"卡牌：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

data modify storage minecraft:card_tags List set value []

execute if entity @s[tag=limit_1] run data modify storage minecraft:card_tags List append value " *限一* "
execute if entity @s[tag=spell] run data modify storage minecraft:card_tags List append value " *法术* "
execute if entity @s[tag=environment] run data modify storage minecraft:card_tags List append value " *环境* "
execute if entity @s[tag=trap] run data modify storage minecraft:card_tags List append value " *陷阱* "
execute if entity @s[tag=equipment] run data modify storage minecraft:card_tags List append value "装备"

tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"标签：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"nbt":"List[0]","color":"white","storage":"minecraft:card_tags"},{"nbt":"List[1]","color":"white","storage":"minecraft:card_tags"},{"nbt":"List[2]","color":"white","storage":"minecraft:card_tags"},{"nbt":"List[3]","color":"white","storage":"minecraft:card_tags"},{"nbt":"List[4]","color":"white","storage":"minecraft:card_tags"}]


tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"能量消耗：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"truecost","name":"@s"},"color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
function ingame:handcard/datacheck2

tellraw @a[tag=click] [{"text":"—————————————[卡牌信息]—————————————","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]