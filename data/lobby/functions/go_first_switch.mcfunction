execute if entity @s[tag=go_first] run tag @s add turnoff
execute if entity @s[tag=!go_first] if score @s go_first matches 1.. run tag @s add turnon
execute if entity @s[tag=!go_first] unless score @s go_first matches 1.. run tag @s add cantswitch
execute if entity @s[tag=turnoff] run tag @s remove go_first
execute if entity @s[tag=turnoff] run title @s actionbar {"text":"争抢先手已关闭","bold":true,"color":"red"}
execute if entity @s[tag=turnoff] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 3 0.675 1
execute if entity @s[tag=turnon] run tag @s add go_first
execute if entity @s[tag=turnon] run title @s actionbar {"text":"争抢先手已开启","bold":true,"color":"green"}
execute if entity @s[tag=turnon] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 3 0.8 1
execute if entity @s[tag=cantswitch] run title @s actionbar {"text":"你没有该道具","bold":true,"color":"gold"}
execute if entity @s[tag=cantswitch] run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~ 3 1 0
function lobby:give_go_first

tag @s remove turnoff
tag @s remove turnon
tag @s remove cantswitch