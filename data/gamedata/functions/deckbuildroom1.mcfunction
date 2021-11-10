execute unless entity @a[x=-191.5,y=16,z=57,dx=18,dy=16,dz=-32,gamemode=adventure] run function lobby:room1/quit_deckbuildroom
execute as @a[tag=preparing1] unless entity @s[x=-191.5,y=16,z=57,dx=18,dy=16,dz=-32] run tag @s remove preparing1
execute as @a[gamemode=adventure] if entity @s[x=-191.5,y=16,z=57,dx=18,dy=16,dz=-32] run tag @s add preparing
execute as @a[gamemode=adventure] if entity @s[x=-191.5,y=16,z=57,dx=18,dy=16,dz=-32] run tag @s add preparing1
execute as @a[tag=preparing1,tag=!preparing_hold1,gamemode=adventure] run function lobby:room1/deckbuildroom
execute as @a[tag=preparing1,gamemode=adventure] run function lobby:room1/deckbuildroom2






