tag @s add 123
execute if entity @e[tag=preparing_hold2] run tp @s -211.5 17 47.0
execute if entity @e[tag=preparing_hold2] run title @s clear
execute if entity @e[tag=preparing_hold2] run title @s times 0 40 5
execute if entity @e[tag=preparing_hold2] run title @s title {"text":"你滚行吗？人家没完事呢!"}

execute unless entity @e[tag=preparing_hold2] run clear @s
execute unless entity @e[tag=preparing_hold2] run setblock -224 18 35 minecraft:lime_shulker_box{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]}
execute unless entity @e[tag=preparing_hold2] run data modify block -224 18 35 Items set from entity @s[scores={deck=1}] EnderItems.[{Slot:0b}].tag.BlockEntityTag.Items
execute unless entity @e[tag=preparing_hold2] run data modify block -224 18 35 Items set from entity @s[scores={deck=2}] EnderItems.[{Slot:1b}].tag.BlockEntityTag.Items
execute unless entity @e[tag=preparing_hold2] run data modify block -224 18 35 Items set from entity @s[scores={deck=3}] EnderItems.[{Slot:2b}].tag.BlockEntityTag.Items
execute unless entity @e[tag=preparing_hold2] run data modify block -224 18 35 Items set from entity @s[scores={deck=4}] EnderItems.[{Slot:3b}].tag.BlockEntityTag.Items
execute unless entity @e[tag=preparing_hold2] run data modify block -224 18 35 Items set from entity @s[scores={deck=5}] EnderItems.[{Slot:4b}].tag.BlockEntityTag.Items
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:6b}] positioned -231 19 43 run function lobby:room2/minion1set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:7b}] positioned -231 18 42 run function lobby:room2/minion2set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:8b}] positioned -231 17 41 run function lobby:room2/minion3set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:9b}] positioned -231 19 56 run function lobby:room2/card1set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:10b}] positioned -231 19 55 run function lobby:room2/card2set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:11b}] positioned -231 19 54 run function lobby:room2/card3set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:12b}] positioned -231 19 53 run function lobby:room2/card4set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:13b}] positioned -231 17 56 run function lobby:room2/card5set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:14b}] positioned -231 17 55 run function lobby:room2/card6set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:15b}] positioned -231 17 54 run function lobby:room2/card7set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:16b}] positioned -231 17 53 run function lobby:room2/card8set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:17b}] positioned -233 19 56 run function lobby:room2/card9set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:18b}] positioned -233 19 55 run function lobby:room2/card10set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:19b}] positioned -233 19 54 run function lobby:room2/card11set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:20b}] positioned -233 19 53 run function lobby:room2/card12set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:21b}] positioned -233 17 56 run function lobby:room2/card13set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:22b}] positioned -233 17 55 run function lobby:room2/card14set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:23b}] positioned -233 17 54 run function lobby:room2/card15set
execute unless entity @e[tag=preparing_hold2] if data entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items.[{Slot:24b}] positioned -233 17 53 run function lobby:room2/card16set



tag @e remove summon3
tag @s remove 123
execute unless entity @e[tag=preparing_hold2] run function lobby:room2/refresh
execute unless entity @e[tag=preparing_hold2] run tag @s add preparing_hold2
