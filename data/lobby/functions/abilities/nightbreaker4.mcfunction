tag @s add 234
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!player] run effect give @s glowing 1 0 true
execute as @a[scores={sneak=0},gamemode=!spectator] run effect give @s glowing 1 0 true
effect give @s blindness 2 0 true



tag @s remove 234