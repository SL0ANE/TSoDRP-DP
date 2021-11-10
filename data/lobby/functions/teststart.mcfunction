scoreboard players reset @s playernumber

execute unless score start gamecd matches 61.. at @s positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,gamemode=adventure] run tag @s add detect
execute as @a[tag=detect] run function lobby:teststart3
execute unless score @s playernumber matches 1 run title @a[tag=detect,tag=!playing] times 0 3 0
execute if score start gamecd matches ..58 run title @a[tag=detect,tag=!playing] times 0 3 0



execute unless score start gamecd matches 61.. store result score @s playernumber if entity @a[tag=detect]
execute if score start gamecd matches 61.. store result score @s playernumber if entity @a[tag=playing]



execute if score @s playernumber matches 2 unless score start gamecd matches 61.. unless entity @a[tag=no_deck] run scoreboard players add start gamecd 1
execute if score start gamecd matches 61.. run scoreboard players add start gamecd 1
execute unless score @s playernumber matches 2 if score start gamecd matches 1.. run scoreboard players reset start gamecd
execute if entity @a[tag=no_deck] run scoreboard players reset start gamecd
execute if score start gamecd matches 1.. run function lobby:teststart2


execute if score @s playernumber matches 1 unless score start gamecd matches 1.. run title @a[tag=detect,tag=!no_deck] title [{"text":"还需1人","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 1 unless score start gamecd matches 1.. run title @a[tag=detect,tag=!no_deck] subtitle [{"text":"","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s playernumber matches 3.. unless score start gamecd matches 1.. run title @a[tag=detect,tag=!no_deck] title [{"text":"人数超载","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 3.. unless score start gamecd matches 1.. run title @a[tag=detect,tag=!no_deck] subtitle [{"text":"","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @a[tag=no_deck] run title @a[tag=detect,tag=!no_deck] title [{"text":"其他玩家没有选用套牌","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @a[tag=no_deck] run title @a[tag=detect,tag=!no_deck] subtitle [{"text":"","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @a[tag=no_deck] run title @a[tag=detect,tag=no_deck] title [{"text":"当前套牌不可用","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @a[tag=no_deck] run title @a[tag=detect,tag=no_deck] subtitle [{"text":"","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s playernumber matches 2 if score start gamecd matches 1..20 run title @a[tag=detect] title [{"text":"数据上传","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"gamecd","name":"percent"},"color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"%","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 21..40 run title @a[tag=detect] title [{"text":"数据上传","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"gamecd","name":"percent"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"%","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 41..60 run title @a[tag=detect] title [{"text":"数据上传","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"gamecd","name":"percent"},"color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"%","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 1..2 run title @a[tag=detect] subtitle [{"text":"▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 3..4 run title @a[tag=detect] subtitle [{"text":"▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 5..6 run title @a[tag=detect] subtitle [{"text":"▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 7..8 run title @a[tag=detect] subtitle [{"text":"▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 9..10 run title @a[tag=detect] subtitle [{"text":"▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 11..12 run title @a[tag=detect] subtitle [{"text":"▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 13..14 run title @a[tag=detect] subtitle [{"text":"▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 15..16 run title @a[tag=detect] subtitle [{"text":"▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 17..18 run title @a[tag=detect] subtitle [{"text":"▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 19..20 run title @a[tag=detect] subtitle [{"text":"▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 21..22 run title @a[tag=detect] subtitle [{"text":"▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 23..24 run title @a[tag=detect] subtitle [{"text":"▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 25..26 run title @a[tag=detect] subtitle [{"text":"▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 27..28 run title @a[tag=detect] subtitle [{"text":"▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 29..30 run title @a[tag=detect] subtitle [{"text":"▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 31..32 run title @a[tag=detect] subtitle [{"text":"▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 33..34 run title @a[tag=detect] subtitle [{"text":"▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 35..36 run title @a[tag=detect] subtitle [{"text":"▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 37..38 run title @a[tag=detect] subtitle [{"text":"▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 39..40 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 41..42 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 43..44 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 45..46 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 47..48 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 49..50 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 51..52 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 53..54 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 55..56 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 57..58 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 59..60 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 61..62 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 63..64 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 65..66 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 67..68 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 69..70 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 71..72 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 73..74 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 75..76 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 77..78 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 79..80 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 81..82 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 83..84 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 85..86 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 87..88 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 89..90 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 91..92 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉▏","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 93..94 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉▍","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 95..96 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉▋","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 97..98 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉▊","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 1..60 if score percent gamecd matches 99..100 run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉▉","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s playernumber matches 2 if score start gamecd matches 60 run tag @a[tag=detect] add playing
execute if score @s playernumber matches 2 if score start gamecd matches 60 run tag @a[tag=detect] add ingame
execute if score @s playernumber matches 2 if score start gamecd matches 60 run title @a[tag=playing] title [{"text":"数据上传完毕","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 60.. if score percent gamecd matches 100.. run title @a[tag=detect] subtitle [{"text":"▉▉▉▉▉▉▉▉▉▉","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s playernumber matches 2 if score start gamecd matches 60 run title @a[tag=playing] times 0 40 10



execute if score @s playernumber matches 2 if score start gamecd matches 60 at @s run playsound minecraft:block.beacon.power_select block @a ~ ~ ~ 30 0.8 1
#execute if score @s playernumber matches 2 if score start gamecd matches 60 at @s run playsound minecraft:johncena block @a ~ ~ ~ 3 1 1


tag @a remove detect
tag @a remove no_deck
execute if score @s playernumber matches 2 if score start gamecd matches 101 run function lobby:entrepreproom

