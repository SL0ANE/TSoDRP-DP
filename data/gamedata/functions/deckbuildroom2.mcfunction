execute unless entity @a[x=-214.5,y=16,z=57,dx=-18,dy=16,dz=-32,gamemode=adventure] run function lobby:room2/quit_deckbuildroom
execute as @a[tag=preparing2] unless entity @s[x=-214.5,y=16,z=57,dx=-18,dy=16,dz=-32] run tag @s remove preparing2
execute as @a[gamemode=adventure] if entity @s[x=-214.5,y=16,z=57,dx=-18,dy=16,dz=-32] run tag @s add preparing
execute as @a[gamemode=adventure] if entity @s[x=-214.5,y=16,z=57,dx=-18,dy=16,dz=-32] run tag @s add preparing2
execute as @a[tag=preparing2,tag=!preparing_hold2,gamemode=adventure] run function lobby:room2/deckbuildroom
execute as @a[tag=preparing2,gamemode=adventure] run function lobby:room2/deckbuildroom2