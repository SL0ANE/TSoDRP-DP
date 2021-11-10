
tag @s add t_switcher

execute unless entity @e[tag=t_switched] as @e[tag=t_minion,scores={minionboard=2}] if score @s ownedby = @e[tag=t_switcher,limit=1] ownedby run tag @s add t_switched
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["t_location2"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
tp @e[tag=t_location2] @s
tp @s @e[tag=t_switched,limit=1]
execute as @e[tag=t_data] if score @s minioncode = @e[tag=t_switcher,limit=1] minioncode at @e[tag=t_switcher] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=t_switcher,limit=1] minioncode at @e[tag=t_switcher] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute as @e[tag=t_display] if score @s minioncode = @e[tag=t_switcher,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=t_switcher,limit=1] Pos[0]
execute as @e[tag=t_display] if score @s minioncode = @e[tag=t_switcher,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=t_switcher,limit=1] Pos[2]
tp @e[tag=t_switched,limit=1] @e[tag=t_location2,limit=1]
execute as @e[tag=t_data] if score @s minioncode = @e[tag=t_switched,limit=1] minioncode at @e[tag=t_switched] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=t_buffstorage] if score @s minioncode = @e[tag=t_switched,limit=1] minioncode at @e[tag=t_switched] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute as @e[tag=t_display] if score @s minioncode = @e[tag=t_switched,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=t_switched,limit=1] Pos[0]
execute as @e[tag=t_display] if score @s minioncode = @e[tag=t_switched,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=t_switched,limit=1] Pos[2]
scoreboard players operation @e[tag=t_switcher] minionboard >< @e[tag=t_switched] minionboard


kill @e[tag=t_location2]

tag @s remove t_switcher
tag @e remove t_switched