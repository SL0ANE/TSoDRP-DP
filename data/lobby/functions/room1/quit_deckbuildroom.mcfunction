tag @a[tag=preparing_hold1] add 123
clear @a[tag=preparing_hold1] carrot_on_a_stick
#give @a[tag=preparing_hold1] minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"鼠标\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"准星瞄准单位\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键与之互动\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["cursor"],CustomModelData:1} 1
#execute as @a[tag=preparing_hold1] run function lobby:give_go_first

loot replace entity @s enderchest.5 mine -182 18 35 minecraft:diamond_pickaxe


title @a[tag=preparing_hold1] actionbar {"text":""}
execute as @e[tag=minion2,tag=chosen,x=-191.5,y=16,z=57,dx=20,dy=16,dz=-32] at @s run kill @s
execute as @e[tag=p_card,tag=chosen,x=-191.5,y=16,z=57,dx=20,dy=16,dz=-32] at @s run kill @s

execute as @a[tag=preparing_hold1,scores={deck=1}] run loot replace entity @s enderchest.0 mine -182 18 35 mainhand
execute as @a[tag=preparing_hold1,scores={deck=2}] run loot replace entity @s enderchest.1 mine -182 18 35 mainhand
execute as @a[tag=preparing_hold1,scores={deck=3}] run loot replace entity @s enderchest.2 mine -182 18 35 mainhand
execute as @a[tag=preparing_hold1,scores={deck=4}] run loot replace entity @s enderchest.3 mine -182 18 35 mainhand
execute as @a[tag=preparing_hold1,scores={deck=5}] run loot replace entity @s enderchest.4 mine -182 18 35 mainhand
execute as @a[tag=preparing_hold1,scores={deck=1}] run item replace entity @s container.11 with air
execute as @a[tag=preparing_hold1,scores={deck=2}] run item replace entity @s container.12 with air
execute as @a[tag=preparing_hold1,scores={deck=3}] run item replace entity @s container.13 with air
execute as @a[tag=preparing_hold1,scores={deck=4}] run item replace entity @s container.14 with air
execute as @a[tag=preparing_hold1,scores={deck=5}] run item replace entity @s container.15 with air
execute as @a[tag=preparing_hold1] run function lobby:usedeck_reset

setblock -182 18 35 air
fill -193 17 48 -193 18 49 air
scoreboard players set deckbuilder1 page 0
kill @e[tag=!chosen,tag=display,tag=gamemob,x=-191.5,y=16,z=57,dx=20,dy=16,dz=-32]
tag @a[tag=preparing_hold1] remove preparing_hold1
tag @a[tag=preparing_hold1] remove preparing1
tag @a[tag=preparing_hold1] remove preparing
tag @a[tag=preparing_hold1] remove 123