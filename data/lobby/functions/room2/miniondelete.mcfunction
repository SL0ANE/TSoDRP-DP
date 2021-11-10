execute as @s[scores={minionboard=1}] run item replace block -224 18 35 container.6 with air
execute as @s[scores={minionboard=2}] run item replace block -224 18 35 container.7 with air
execute as @s[scores={minionboard=3}] run item replace block -224 18 35 container.8 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=1}] run loot replace entity @s enderchest.0 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=2}] run loot replace entity @s enderchest.1 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=3}] run loot replace entity @s enderchest.2 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=4}] run loot replace entity @s enderchest.3 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=5}] run loot replace entity @s enderchest.4 mine -224 18 35 mainhand
execute as @a[tag=click,tag=preparing_hold2,scores={deck=1}] run item replace entity @s container.11 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=2}] run item replace entity @s container.12 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=3}] run item replace entity @s container.13 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=4}] run item replace entity @s container.14 with air
execute as @a[tag=click,tag=preparing_hold2,scores={deck=5}] run item replace entity @s container.15 with air
loot replace entity @s enderchest.5 mine -224 18 35 minecraft:diamond_pickaxe
kill @s
playsound minecraft:item.trident.return block @a[tag=click] ~ ~ ~ 3 1 1
function lobby:room2/refresh
