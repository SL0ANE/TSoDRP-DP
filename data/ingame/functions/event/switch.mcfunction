
execute if entity @s[tag=!switcher] run tag @s add switcher

execute unless entity @e[tag=switched] as @e[tag=minion,scores={minionboard=2}] if score @s ownedby = @e[tag=switcher,limit=1] ownedby run tag @s add switched
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["location2"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
tp @e[tag=location2] @s
tp @s @e[tag=switched,limit=1]
execute as @e[tag=data] if score @s minioncode = @e[tag=switcher,limit=1] minioncode at @e[tag=switcher] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=switcher,limit=1] minioncode at @e[tag=switcher] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute as @e[tag=display] if score @s minioncode = @e[tag=switcher,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=switcher,limit=1] Pos[0]
execute as @e[tag=display] if score @s minioncode = @e[tag=switcher,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=switcher,limit=1] Pos[2]
tp @e[tag=switched,limit=1] @e[tag=location2,limit=1]
execute as @e[tag=data] if score @s minioncode = @e[tag=switched,limit=1] minioncode at @e[tag=switched] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=switched,limit=1] minioncode at @e[tag=switched] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute as @e[tag=display] if score @s minioncode = @e[tag=switched,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=switched,limit=1] Pos[0]
execute as @e[tag=display] if score @s minioncode = @e[tag=switched,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=switched,limit=1] Pos[2]
scoreboard players operation @e[tag=switcher] minionboard >< @e[tag=switched] minionboard


kill @e[tag=location2]