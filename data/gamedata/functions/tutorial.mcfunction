execute as @a[tag=tutorial] unless entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run bossbar set minecraft:tutorial_0 players
execute as @a[tag=tutorial] unless entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run bossbar set minecraft:tutorial_1 players
execute as @a[tag=tutorial] unless entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run bossbar set minecraft:tutorial_2 players
execute as @a[tag=tutorial] unless entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run bossbar set minecraft:tutorial_p players


execute if score tutorial system matches 1.. unless entity @a[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run function lobby:quit_tutorial


execute as @a[tag=tutorial] unless entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run tag @s remove tutorial_hold
execute as @a[tag=tutorial] unless entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run tag @s remove tutorial
execute as @a if entity @s[x=-195.5,y=17,z=69.5,dx=-14,dy=6,dz=13] run tag @s add tutorial
execute as @a[tag=tutorial,gamemode=adventure] run function lobby:tutorial/1


bossbar set minecraft:tutorial_p color blue
bossbar set minecraft:tutorial_1 color blue
bossbar set minecraft:tutorial_2 color blue
bossbar set minecraft:tutorial_0 color blue

bossbar set minecraft:tutorial_p players @a[tag=tutorial]
bossbar set minecraft:tutorial_1 players @a[tag=tutorial]
bossbar set minecraft:tutorial_2 players @a[tag=tutorial]
bossbar set minecraft:tutorial_0 players @a[tag=tutorial]



execute if entity @a[tag=tutorial,tag=tutorial_hold,gamemode=adventure] run function lobby:tutorial/2


